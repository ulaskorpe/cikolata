<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

//use Illuminate\Database\Eloquent\SoftDeletes;

class Country extends Model
{
    use HasFactory;
    use SoftDeletes;
    protected $table = 'countries';
    protected $fillable = [
        'sortname','name','phonecode'
    ];

    protected $hidden = [
        "deleted_at","created_at","updated_at"
    ];




}
