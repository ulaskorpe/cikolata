<?php

namespace App\Providers;

use App\Models\UserOrder;
use App\Models\UserVerify;
use App\Observers\UserOrderObserver;
use App\Observers\UserVerifyObserver;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        UserOrder::observe(UserOrderObserver::class);
        UserVerify::observe(UserVerifyObserver::class);
    }
}
