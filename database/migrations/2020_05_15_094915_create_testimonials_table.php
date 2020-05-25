<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTestimonialsTable extends Migration
{

    public function up()
    {
        Schema::create('testimonials', function (Blueprint $table) {
            $table->increments('testimonial_id');
            $table->integer('user_id')->unsigned();
            $table->foreign('user_id')->references('id')->on('users')->onDelete('cascade');
            $table->string('testimonial_title');
            $table->text('testimonial_body');
            $table->timestamps();
        });
    }
    public function down()
    {
        Schema::dropIfExists('testimonials');
    }
}
