<?php

namespace Database\Seeders;

use App\Http\Controllers\ApiTrait;
use App\Models\UserOrder;
use Carbon\Carbon;
use Illuminate\Database\Seeder;

class UserOrderSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    use ApiTrait;
    public function run()
    {
       for($i=0;$i<300;$i++){

           $uid = rand(1,100);
           $pid= rand(1,3);
           $userOrder = new UserOrder();
           $userOrder->user_id= $uid;
           $userOrder->product_id = $pid;
           $userOrder->order_id=$this->generateOrderId();
           $userOrder->datetime = Carbon::now();
           // $userOrder->expires = Carbon::now()->addMonths($product['duration']);
           $userOrder->status = 'accepted';
           $userOrder->save();

       }
    }
}
