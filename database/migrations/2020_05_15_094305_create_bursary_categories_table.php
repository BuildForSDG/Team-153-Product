<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateBursaryCategoriesTable extends Migration
{
    public function up()
    {
        Schema::create('bursary_categories', function (Blueprint $table) {
            $table->id('category_id')->unique();
            $table->string('category_name');
            $table->float('amount_available');
            $table->timestamps();
        });
    }
    public function down()
    {
        Schema::dropIfExists('bursary_categories');
    }
}
