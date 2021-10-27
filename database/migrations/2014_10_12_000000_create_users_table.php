<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateUsersTable extends Migration
{
    /**
     * Run the migrations.
     *['token','name','surname',
    'email','email_verified_at','phone_code','phone',
    'phone_verified_at','country_id','lang','is_active'

    ];
     * @return void
     */
    public function up()
    {
        Schema::create('users', function (Blueprint $table) {
            $table->id();
            $table->string('token')->unique();
            $table->string('name')->nullable()->default(null);
            $table->string('surname')->nullable()->default(null);
            $table->string('email')->nullable()->default(null);
            $table->timestamp('email_verified_at')->nullable();
            $table->string('phone_code')->nullable()->default(null);
            $table->string('phone')->nullable()->default(null);
            $table->timestamp('phone_verified_at')->nullable();
            $table->integer('country_id')->default(0);
            $table->enum('lang',['en','tr'])->default('en');
            $table->boolean('is_active')->default(0);
            $table->enum('type',['standart','premium'])->default('standart');
            $table->dateTime('expires')->default(\Carbon\Carbon::now());
            $table->softDeletes();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('users');
    }
}
