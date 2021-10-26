<?php

namespace App\Http\Controllers;

use App\Models\Country;
use Illuminate\Http\Request;

class ValidationController extends Controller
{

    use ApiTrait;
    public function checkPhone(Request $request){

        if ($request->isMethod('post')) {


            if ($request->header('x-api-key') == $this->generateKey()) {


                $phone_code= intval(trim($request['phone_code']));
                $code = Country::where('phonecode', '=', $phone_code)->first();

                if (empty($code['id']) || $phone_code==0) {
                    $returnArray['status'] = false;
                    $returnArray['status_code'] = 404;
                    //$returnArray['data'] = ['msg'=>__('warning.invalid_country_code')];
                    $returnArray['msg'] = __('warning.invalid_country_code');
                } else {

                    $phone = intval(trim($request['phone_number']));
                    //  if (!is_int($request['phone']) || $request['phone'] < 1000000000) {
                    if(!$this->validate_phone_number($phone,$phone_code)){
                        $returnArray['status'] = false;
                        $returnArray['status_code'] = 406;
                        //  $returnArray['data'] = ['msg'=>__('warning.invalid_phone')];
                        $returnArray['msg'] = __('warning.invalid_phone');
                    } else {

                        //  $user_ch = User::select('id')->where('phone_code','=',$phone_code)->where('phone','=',$phone)->first();
                        // $user_ch_tmp = UsersTmp::select('id')->where('phone_code','=',$phone_code)->where('phone','=',$phone)->first();
                        //  if (!is_int($request['phone']) || $request['phone'] < 1000000000) {
                        //  if(!empty($user_ch['id']) ||  !empty($user_ch_tmp['id'])){
                        if(false){
                            $returnArray['status'] = false;
                            $returnArray['status_code'] = 409;
                            //$returnArray['data'] = ['msg'=>__('warning.phone_conflict')];
                            $returnArray['msg'] = __('warning.phone_conflict');
                        } else {
                            $returnArray['status'] = true;
                            $returnArray['status_code'] = 200;
                            //$returnArray['data'] = ['msg'=>__('warning.valid')];
                            $returnArray['msg'] = __('warning.valid');
                        }


                    }

                }


            } else {
                $returnArray['status'] = false;
                $returnArray['status_code'] = 498;
                //$returnArray['data'] = ['msg'=>__('warning.false_key')];
                $returnArray['msg'] = __('warning.false_key');

            }


        }else{
            $returnArray['status'] = false;
            $returnArray['status_code'] = 405;
            //$returnArray['data'] = ['msg'=>__('warning.method_not_allowed')];
            $returnArray['msg'] = __('warning.method_not_allowed');
        }
        return response()->json($returnArray);
    }

    public function checkEmail(Request $request){

        if ($request->isMethod('post')) {


            if ($request->header('x-api-key') == $this->generateKey()) {
                $this->setLang($request->header('lang'));
                $email = trim($request['email']);

                if (!filter_var($email, FILTER_VALIDATE_EMAIL) || empty($request['email'])) {
                    $returnArray['status'] = false;
                    $returnArray['status_code'] = 406;
                    //$returnArray['data'] = ['msg'=>__('warning.invalid_email')];
                    $returnArray['msg'] =__('warning.invalid_email');
                } else {

                    //    $user = User::select('id')->where('email','=',$email)->first();
                    //  $user_ch_tmp = UsersTmp::select('id')->where('email','=',$email)->first();
                    //  if (!is_int($request['phone']) || $request['phone'] < 1000000000) {
                    //    if(!empty($user['id']) || !empty($user_ch_tmp['id'])){
                    if(false){
                        $returnArray['status'] = false;
                        $returnArray['status_code'] = 409;
                        //$returnArray['data'] = ['msg'=>__('warning.email_conflict')];
                        $returnArray['msg'] = __('warning.email_conflict');
                    } else {

                        $returnArray['status'] = true;
                        $returnArray['status_code'] = 200;
                        //$returnArray['data'] = ['msg'=>__('warning.valid')];
                        $returnArray['msg'] = __('warning.valid');
                    }

                }


            } else {
                $returnArray['status'] = false;
                $returnArray['status_code'] = 498;
                //$returnArray['data'] = ['msg'=>__('warning.false_key')];
                $returnArray['msg'] = __('warning.false_key');

            }


        }else{
            $returnArray['status'] = false;
            $returnArray['status_code'] = 405;
            //$returnArray['data'] = ['msg'=>__('warning.method_not_allowed')];
            $returnArray['msg'] = __('warning.method_not_allowed');
        }
        return response()->json($returnArray);
    }

}
