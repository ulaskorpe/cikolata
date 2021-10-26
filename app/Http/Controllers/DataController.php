<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class DataController extends Controller
{
    use ApiTrait;


    public function returnKey(Request $request){

        return response()->json(['key'=>$this->generateKey()]);

    }

}
