<?php

namespace App\Observers;

use App\Http\Controllers\ApiTrait;
use App\Models\UserVerify;

class UserVerifyObserver
{
    use ApiTrait;
    public function created(UserVerify $userVerify){


        if($userVerify['type']=='email'){
            ///// SENDS EMAIL
            $title = "MAIL SENT TO :".$userVerify->user()->first()['email'];
            $txt = __('warning.pin_to_verify_email',['pin'=>$userVerify['pin']]);
        }else{
            ///// SENDS SMS
            $title = "SMS SENT TO :".$userVerify->user()->first()['phone_code']."-".$userVerify->user()->first()['phone'];
            $txt = __('warning.pin_to_verify_phone',['pin'=>$userVerify['pin']]);
        }

        $this->makeTmp($title,$txt);



    }
}
