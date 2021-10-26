<?php

namespace App\Models;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Illuminate\Database\Eloquent\SoftDeletes;

class User extends Authenticatable
{
    use HasFactory, Notifiable;
    use SoftDeletes;
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     *

     */
    protected $fillable = ['token','name','surname',
        'email','email_verified_at','phone_code','phone',
        'phone_verified_at','country_id','lang','is_active'

    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */

    protected $hidden = [
        'created_at','updated_at','deleted_at'
    ];
    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
        'phone_verified_at' => 'datetime'
    ];



    public function country() {
        return $this->hasOne(Country::class,'country_id','id');
    }

    public function devices(){
        return $this->hasMany(UserDevice::class,'user_id','id');
    }
}
