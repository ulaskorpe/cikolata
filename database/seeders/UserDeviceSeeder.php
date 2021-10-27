<?php

namespace Database\Seeders;

use App\Models\UserDevice;
use Illuminate\Database\Seeder;

class UserDeviceSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        for($i=1;$i<101;$i++){
            $ud = new UserDevice();
            $ud->user_id = $i;
            $ud->device_id = rand(1000000000,9999999999);
            $ud->app_id = rand(1000000000,9999999999);
            $ud->os = (rand(100,999)%2==0)?'AndroidSMT':'IOS';
             $ud->save();

        }
    }
}
