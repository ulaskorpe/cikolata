<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class UserDevice extends Model
{
    use HasFactory;

    use SoftDeletes;


    protected $table = 'user_devices';
    protected $fillable = [
        'user_id','device_id','app_id','os'
    ];

    protected $hidden = [
        'created_at','updated_at','deleted_at'
    ];

    public function user(){
        return $this->hasOne(User::class,'id','user_id');
    }

}
