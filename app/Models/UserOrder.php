<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;


class UserOrder extends Model
{
    use HasFactory;
    use SoftDeletes;


    protected $table = 'user_orders';
    protected $fillable = [
      'user_id','product_id','datetime','expires','status'
    ];

    protected $hidden = [
        'created_at','updated_at','deleted_at'
    ];

}
