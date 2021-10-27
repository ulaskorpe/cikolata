<?php

namespace App\Http\Controllers;

use App\Models\Country;
use App\Models\Product;
use Illuminate\Http\Request;

class DataController extends Controller
{
    use ApiTrait;


    public function returnKey(Request $request){

        return response()->json(['key'=>$this->generateKey()]);

    }

    public function countryList(Request $request) {

        if ($request->isMethod('post')) {
            if ($request->header('x-api-key') == $this->generateKey()) {


                $returnArray['data'] =  Country::all();
                $returnArray['status'] = true;
                $returnArray['status_code'] = 200;

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

    public function productList(Request $request) {

        if ($request->isMethod('post')) {
            if ($request->header('x-api-key') == $this->generateKey()) {

                $returnArray['data'] =  Product::where('is_active','=',1)->get();
                $returnArray['status'] = true;
                $returnArray['status_code'] = 200;

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
