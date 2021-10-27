<?php

namespace App\Observers;

use App\Http\Controllers\ApiTrait;
use App\Models\Tmp;
use App\Models\User;
use App\Models\UserOrder;
use Carbon\Carbon;

class UserOrderObserver
{
    use ApiTrait;
    public function created(UserOrder $userOrder){

        //$this->makeTmp($userOrder->user()->first()->name,$userOrder->product()->first()->name);

        if($userOrder->user()->first()['type']=='standart'){
            $expires = Carbon::now()->addMonths($userOrder->product()->first()['duration']);
        }else{
            $expires = Carbon::parse($userOrder->user()->first()['expires'])->addMonths($userOrder->product()->first()['duration']);
        }


        User::where('id','=',$userOrder->user()->first()->id)
            ->update(['type'=>'premium','expires'=>$expires]);

        if($userOrder->isDirty('status')){
            // email has changed
            $new_email = $userOrder->email;
            $old_email = $userOrder->getOriginal('email');
            $this->makeTmp("create".$new_email,$old_email);
        }
//2021-10-26 20:08:15.000000
    }

    public function save(UserOrder $userOrder){


    }
    public function updating(UserOrder $userOrder)
    {
        if($userOrder->isDirty('status')){

            $new_status = $userOrder->status;
            $old_status = $userOrder->getOriginal('status');
           // $this->makeTmp("updating".$new_status,$old_status);

            if($new_status=='cancelled'){
//$userOrder->product()->first()['duration'];
                $expires =Carbon::parse($userOrder->user()->first()['expires'])->subMonths($userOrder->product()->first()['duration']);
                $type='premium';
                if($expires <= Carbon::now()){
                    $this->makeTmp("expires:".$expires,$userOrder->product()->first()['duration']);

                    $expires = Carbon::now();
                    $type = 'standart';
                }
              $user= User::where('id','=',$userOrder->user()->first()['id'])->first();
                $user->expires = $expires;
                $user->type = $type;
                $user->save();

                /////////////TO DO/////////////////////////////
                $this->makeTmp($userOrder->product()->first()['name']." refund to user ".$user['name']." ".$user['surname']
                    ,Carbon::now()->format('d.m.Y'));
                /////////////TO DO/////////////////////////////



                //->update(['expires'=>$expires,'type'=>$type]);

        //        $this->makeTmp($userOrder->product()->first()['duration']." azaldý:".$expires.":",$userOrder['order_id']." cancelled");

            }elseif ($new_status=='renewed' || $old_status=='renewed'){
                $user= User::where('id','=',$userOrder->user()->first()['id'])->first();
                $user->expires =Carbon::parse($userOrder->user()->first()['expires'])->addMonths($userOrder->product()->first()['duration']);
                $user->type = 'premium';
                $user->save();

                $this->makeTmp($user['name']." ".$user['surname'],$userOrder['order_id']." renewed");

            }


        }//// is dirty?
    }

    public function update(UserOrder $userOrder){

        //$this->makeTmp($userOrder['status'],$userOrder['order_id']." cancelled");


    }

}
