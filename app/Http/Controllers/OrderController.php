<?php

namespace App\Http\Controllers;

use App\Models\Product;
use App\Models\User;
use App\Models\UserOrder;
use Carbon\Carbon;
use Illuminate\Http\Request;

class OrderController extends Controller
{

    use ApiTrait;


    public function purchase(Request $request){


        if ($request->isMethod('post')) {
            if ($request->header('x-api-key') == $this->generateKey()) {
                $user = User::where('token','=',$request['token'])->where('is_active','=',1)->first();
                $product = Product::find($request['product_id']);

                if(empty($user['id']) || empty($product['id'])){
                    $returnArray['status'] = false;
                    $returnArray['status_code'] = 404;
                    $returnArray['msg'] = __('warning.not_found');

                }else{

$month = ((!empty($request['month']))?$request['month']:0);
$month = ($month>12 || $month<1)?0:$month;
if($this->getPayment($request['kk'],Carbon::parse(((!empty($request['year']))?$request['year']:"1990")."-".$month."-31")
    ->format('Y-m-d'),$request['cvc'])){




        $userOrder = new UserOrder();
        $userOrder->user_id= $user['id'];
        $userOrder->product_id = $product['id'];
        $userOrder->order_id=$this->generateOrderId();
        $userOrder->datetime = Carbon::now();
       // $userOrder->expires = Carbon::now()->addMonths($product['duration']);
        $userOrder->status = 'accepted';
        $userOrder->save();

//2021-10-26 20:08:15


    $returnArray['status'] = true;
    $returnArray['status_code'] = 200;
   // $returnArray['data']['user'] = $userOrder->user()->first();
    $returnArray['data']= $userOrder;
    $returnArray['msg'] = __('warning.product_added',['product'=> $product['name']]);


}else{
    $returnArray['status'] = true;
    $returnArray['status_code'] = 406;
    $returnArray['msg'] = __('warning.not_acceptable');

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

    public function cancel(Request $request){


        if ($request->isMethod('post')) {
            if ($request->header('x-api-key') == $this->generateKey()) {
                $user = User::where('token','=',$request['token'])->where('is_active','=',1)->first();
                $userOrder = UserOrder::where('order_id','=',$request['order_id'])->first();

                if(empty($user['id']) || empty($userOrder['id'])){
                    $returnArray['status'] = false;
                    $returnArray['status_code'] = 404;
                    $returnArray['msg'] = __('warning.not_found');

                }else{

//2023-06-26 18:56:55 2021-10-26 20:08:15
                    //2021-10-26 20:08:15
                 //   return Carbon::now()->subMonths(2);
            if($userOrder['status']!='cancelled'){




                  //  UserOrder::where('order_id','=',$request['order_id'])->update(['status'=>'cancelled']);
                  $userOrder =  UserOrder::where('order_id','=',$request['order_id'])->first();
                  $userOrder->status='cancelled';
                  $userOrder->save();
                  //->update(['status'=>'cancelled']);

                    $returnArray['status'] = true;
                    $returnArray['status_code'] = 200;
                     $returnArray['data'] =  UserOrder::where('order_id','=',$request['order_id'])->first();
                    $returnArray['msg'] = __('warning.order_cancelled');
            }else{
                $returnArray['status'] = false;
                $returnArray['status_code'] = 304;
                $returnArray['data'] = $userOrder;
                $returnArray['msg'] = __('warning.already_cancelled');
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

    public function renew(Request $request){


        if ($request->isMethod('post')) {
            if ($request->header('x-api-key') == $this->generateKey()) {
                $user = User::where('token','=',$request['token'])->where('is_active','=',1)->first();
                $userOrder = UserOrder::where('order_id','=',$request['order_id'])->first();

                if(empty($user['id']) || empty($userOrder['id'])){
                    $returnArray['status'] = false;
                    $returnArray['status_code'] = 404;
                    $returnArray['msg'] = __('warning.not_found');

                }else{

//2023-06-26 18:56:55 2021-10-26 20:08:15
                    //2021-10-26 20:08:15
                 //   return Carbon::now()->subMonths(2);
            if($userOrder['status']!='cancelled'){


                $month = ((!empty($request['month']))?$request['month']:0);
                $month = ($month>12 || $month<1)?0:$month;
                if($this->getPayment($request['kk'],Carbon::parse(((!empty($request['year']))?$request['year']:"1990")."-".$month."-31")
                    ->format('Y-m-d'),$request['cvc'])){


                    $userOrder =  UserOrder::where('order_id','=',$request['order_id'])->first();

                    if($userOrder['status']!='renewed'){

                    $userOrder->status='renewed';
                    $userOrder->save();
                    }else{

                        $user= User::where('id','=',$userOrder->user()->first()['id'])->first();
                        $user->expires =Carbon::parse($userOrder->user()->first()['expires'])->addMonths($userOrder->product()->first()['duration']);
                        $user->type = 'premium';
                        $user->save();

                        $this->makeTmp($user['name']." ".$user['surname'],$userOrder['order_id']." renewed again");
                    }

                    $returnArray['status'] = true;
                    $returnArray['status_code'] = 200;
                    $returnArray['data'] =  $userOrder;
                    $returnArray['msg'] = __('warning.order_renewed');


                }else{
                    $returnArray['status'] = true;
                    $returnArray['status_code'] = 406;
                    $returnArray['msg'] = __('warning.not_acceptable');

                }

                  //  UserOrder::where('order_id','=',$request['order_id'])->update(['status'=>'cancelled']);

                  //->update(['status'=>'cancelled']);

            }else{


                $returnArray['status'] = false;
                $returnArray['status_code'] = 304;
                $returnArray['data'] = $userOrder;
                $returnArray['msg'] = __('warning.already_cancelled');
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
}
