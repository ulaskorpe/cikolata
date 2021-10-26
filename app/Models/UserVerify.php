<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class UserVerify extends Model
{
    use HasFactory;

    use SoftDeletes;


    protected $table = 'user_verify';
    protected $fillable = [
        'user_id','type','pin'
    ];

    protected $hidden = [
        'created_at','updated_at','deleted_at'
    ];

    public function user(){
        return $this->hasOne(User::class,'user_id','id');
    }
}