<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;
use Illuminate\Validation\Rules\Unique;

class CreateUsersTable extends Migration
{

    public function up()
    {
        Schema::create('users', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name');
            $table->string('first_name')->nullable();
            $table->string('last_name')->nullable();
            $table->string('email')->unique();
            $table->string('phone')->unique()->nullable();
            $table->string('username')->unique()->nullable();
            $table->tinyInteger('is_admin')->nullable();
            $table->date('DOB')->nullable();
            $table->timestamp('email_verified_at')->nullable();
            $table->string('password')->nullable();
            $table->rememberToken(); //Adds remember_token as VARCHAR(100) NULL
            $table->timestamps(); //Adds created_at and updated_at columns
        });
    }
    public function down()
    {
        Schema::dropIfExists('users');
    }
}
