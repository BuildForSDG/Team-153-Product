<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateBursariesTable extends Migration
{

    public function up()
    {
        Schema::create('bursaries', function (Blueprint $table) {
            $table->id('bursary_id');
            $table->integer('category_id')->unsigned();
            $table->foreign('category_id')->references('id')->on('users')->onDelete('cascade');
            $table->float('bursary_amount');
            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists('bursaries');
    }
}
