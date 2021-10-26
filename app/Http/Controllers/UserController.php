<?php

namespace App\Http\Controllers;

use App\Models\User;
use App\Models\UserDevice;
use Illuminate\Http\Request;

class UserController extends Controller
{

    use ApiTrait;

    public function initial(Request $request){


        if ($request->isMethod('post')) {
            if ($request->header('x-api-key') == $this->generateKey()) {

                $user_device = UserDevice::with('user')
                    ->where('device_id','=',$request->header('device-id'))->first();
                if(empty($user_device['id'])){

                    $user = new User();
                    $user->token = $this->generateToken();
                    $user->lang = (!empty($request->header('lang')))?$request->header('lang'):'en';
                    $user->save();

                     $user_device = new UserDevice();
                     $user_device->user_id = $user['id'];
                     $user_device->device_id = $request->header('device-id');
                     $user_device->app_id = $request->header('app-id');
                     $user_device->os = (!empty($request->header('os')))?$request->header('os'):'';
                     $user_device->save();


                    $returnArray['status'] = true;
                    $returnArray['status_code'] = 201;
                    $returnArray['data'] = User::with('devices')->find($user['id']);
                    $returnArray['msg'] = __('warning.user_created');

                }else{
                    $user_device->device_id = $request->header('device-id');
                    $user_device->app_id = $request->header('app-id');
                    $user_device->os = (!empty($request->header('os')))?$request->header('os'):'';
                    $user_device->save();

                    $returnArray['data'] = User::with('devices')->find($user_device->user()->first()['id']);
                    $returnArray['status'] = true;
                    $returnArray['status_code'] = 200;
                    $returnArray['msg'] = __('warning.user_found');

                }

            }else{
                $returnArray['status'] = false;
                $returnArray['status_code'] = 405;
                $returnArray['msg'] = __('warning.method_not_allowed');
            }


        }else{
            $returnArray['status'] = false;
            $returnArray['status_code'] = 406;
            $returnArray['msg'] = __('warning.not_acceptable');
        }

        return response()->json($returnArray);
    }

    public function login(Request $request){


        if ($request->isMethod('post')) {
            if ($request->header('x-api-key') == $this->generateKey()) {
                $user = User::where('token','=',$request['token'])->first();

                if(empty($user['id'])){
                    $returnArray['status'] = false;
                    $returnArray['status_code'] = 404;
                    $returnArray['msg'] = __('warning.not_found');

                }else{

                    $user_device = UserDevice::where('device_id','=',$request->header('device-id'))
                        ->where('user_id','=',$user['id'])->first();
                    if(!empty($user_device['id'])){
                        $user_device->app_id = $request->header('app-id');
                        $user_device->os = (!empty($request->header('os')))?$request->header('os'):'';
                        $user_device->save();
                    }else{
                        $user_device = new UserDevice();
                        $user_device->user_id = $user['id'];
                        $user_device->device_id = $request->header('device-id');
                        $user_device->app_id = $request->header('app-id');
                        $user_device->os = (!empty($request->header('os')))?$request->header('os'):'';
                        $user_device->save();
                    }
                    $user = User::with('devices')->where('token','=',$request['token'])->first();
                    $returnArray['data'] =  $user;
                    $returnArray['status'] = true;
                    $returnArray['status_code'] = 200;
                    $returnArray['msg'] = __('warning.user_found');

                }

            }else{
                $returnArray['status'] = false;
                $returnArray['status_code'] = 405;
                $returnArray['msg'] = __('warning.method_not_allowed');
            }


        }else{
            $returnArray['status'] = false;
            $returnArray['status_code'] = 406;
            $returnArray['msg'] = __('warning.not_acceptable');
        }

        return response()->json($returnArray);
    }

}
