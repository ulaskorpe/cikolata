<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});


Route::post('/return-key', [ \App\Http\Controllers\DataController::class, 'returnKey'])->name('return-key');
Route::post('/country-list', [ \App\Http\Controllers\DataController::class, 'countryList'])->name('country-list');
Route::post('/product-list', [ \App\Http\Controllers\DataController::class, 'productList'])->name('product-list');


Route::group(['prefix' => 'orders'], function () {
    Route::post('/purchase', [\App\Http\Controllers\OrderController::class, 'purchase'])->name('purchase-order');
    Route::post('/cancel', [\App\Http\Controllers\OrderController::class, 'cancel'])->name('cancel-order');
    Route::post('/renew', [\App\Http\Controllers\OrderController::class, 'renew'])->name('renew-order');
});

Route::group(['prefix' => 'users'], function () {


    Route::post('/initial', [\App\Http\Controllers\UserController::class, 'initial'])->name('initial-user');
    Route::post('/login-user', [\App\Http\Controllers\UserController::class, 'login'])->name('login-user');

    Route::post('/update', [\App\Http\Controllers\UserController::class, 'update'])->name('update-user');
    Route::post('/verify', [\App\Http\Controllers\UserController::class, 'verify'])->name('verify-user');
    Route::post('/switch-active', [\App\Http\Controllers\UserController::class, 'switchActive'])->name('switch-active');

});