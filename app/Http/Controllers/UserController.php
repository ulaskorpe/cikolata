<?php

namespace App\Http\Controllers;

use App\Models\User;
use App\Models\UserDevice;
use App\Models\UserVerify;
use Carbon\Carbon;
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
                    $user->is_active =1;
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
                $user = User::where('token','=',$request['token'])->where('is_active','=',1)->first();

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

    public function update(Request $request){


        if ($request->isMethod('post')) {
            if ($request->header('x-api-key') == $this->generateKey()) {
                $user = User::where('token','=',$request['token'])->where('is_active','=',1)->first();

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

                    $user->name = (!empty($request['name']))?$request['name']:$user['name'];
                    $user->surname = (!empty($request['surname']))?$request['surname']:$user['surname'];
                    $user->country_id = (!empty($request['country_id']))?$request['country_id']:$user['country_id'];



                    if(!empty($request['email']) && $request['email']!=$user['email'] &&
                        filter_var($request['email'], FILTER_VALIDATE_EMAIL)){
                        $user->email = $request['email'];
                        $user->save();
                        UserVerify::where('user_id','=',$user['id'])->where('type','=','email')->delete();
                        $verify = new UserVerify();
                        $verify->user_id=$user['id'];
                        $verify->type = 'email';
                        $verify->pin = rand(100000,999999);
                        $verify->save();
                    }

                    if(!empty($request['phone']) && $request['phone']!=$user['phone'] && !empty($request['phone_code'])){

                        if($this->validate_phone_number($request['phone'],$request['phone_code'])){

                            $user->phone_code = $request['phone_code'];
                            $user->phone = $request['phone'];

                            UserVerify::where('user_id','=',$user['id'])->where('type','=','phone')->delete();
                            $verify = new UserVerify();
                            $verify->user_id=$user['id'];
                            $verify->type = 'phone';
                            $verify->pin = rand(100000,999999);
                            $verify->save();

                        }
                    }





                    $user = User::with('devices')->where('token','=',$request['token'])->first();
                    $returnArray['data'] =  $user;
                    $returnArray['status'] = true;
                    $returnArray['status_code'] = 202 ;
                    $returnArray['msg'] = __('warning.user_updated');

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

    public function verify(Request $request){


        if ($request->isMethod('post')) {
            if ($request->header('x-api-key') == $this->generateKey()) {
                $user = User::where('token','=',$request['token'])->where('is_active','=',1)->first();

                $array = ['email','phone'];
                if(empty($user['id']) || !in_array($request['type'],$array)){
                    $returnArray['status'] = false;
                    $returnArray['status_code'] = 404;
                    $returnArray['msg'] = __('warning.not_found');

                }else{

                    $verify = UserVerify::where('user_id','=',$user['id'])
                        ->where('type','=',$request['type'])->first();

                    if(!empty($verify['id'])){
                        if($verify['pin']==$request['pin'] ){
                            if( $request['type']=='email'){
                                $user->email_verified_at=Carbon::now();
                            }else{
                                $user->phone_verified_at=Carbon::now();
                            }
                            $user->save();
                            $verify->delete();

                            $user = User::with('devices')->where('token','=',$request['token'])->first();
                            $returnArray['data'] =  $user;
                            $returnArray['status'] = true;
                            $returnArray['status_code'] = 200;
                            $returnArray['msg'] = __('warning.user_verified');

                        }else{

                            $returnArray['status'] = true;
                            $returnArray['status_code'] = 406;
                            $returnArray['msg'] = __('warning.not_found');
                        }

                    }else{
                        $returnArray['status'] = true;
                        $returnArray['status_code'] = 404;
                        $returnArray['msg'] = __('warning.not_found');

                    }
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

    public function switchActive(Request $request){


        if ($request->isMethod('post')) {
            if ($request->header('x-api-key') == $this->generateKey()) {
                $user = User::where('token','=',$request['token'])->first();

                if(empty($user['id'])){
                    $returnArray['status'] = false;
                    $returnArray['status_code'] = 404;
                    $returnArray['msg'] = __('warning.not_found');

                }else{


                    $user->is_active = ($request['is_active']=='true')?1:0;
                    $user->save();



                    $user = User::with('devices')->where('token','=',$request['token'])->first();
                    $returnArray['data'] =  $user;
                    $returnArray['status'] = true;
                    $returnArray['status_code'] = 200;
                    $returnArray['msg'] = ($request['is_active']=='true')? __('warning.user_activated'): __('warning.user_inactivated');

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
