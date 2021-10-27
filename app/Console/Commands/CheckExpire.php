<?php

namespace App\Console\Commands;

use App\Models\Tmp;
use App\Models\User;
use Carbon\Carbon;
use Illuminate\Console\Command;

class CheckExpire extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'check:expire';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Command description';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return int
     */
    public function handle()
    {

        $list ="";
        $users = User::where('is_active','=',1)->where('type','=','premium')->inRandomOrder()->limit(10)->get();
        foreach ($users as $user){
            $list.=$user['email'].' exp:'.$user['expires'].'||';
            if($user['expires']<=Carbon::now()){
                $user->type='standart';
                $user->save();
            }
        }


        $tmp = new Tmp();
        $tmp->title = 'CRON WORKING FINE!'.date('YmdHis');
        $tmp->data = $list;;
        $tmp->save();




     //   return 0;
    }
}
