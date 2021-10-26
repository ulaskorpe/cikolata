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


Route::group(['prefix' => 'users'], function () {


    Route::post('/contact-post', [\App\Http\Controllers\UserController::class, 'contactPost'])->name('contact-post');
    Route::post('/initial', [\App\Http\Controllers\UserController::class, 'initial'])->name('initial-user');
    Route::post('/login-user', [\App\Http\Controllers\UserController::class, 'login'])->name('login-user');

});