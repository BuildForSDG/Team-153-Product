<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateApplicationsTable extends Migration
{
    public function up()
    {
        Schema::create('applications', function (Blueprint $table) {
            $table->increments('application_id');
            $table->integer('user_id')->unsigned();
            $table->foreign('user_id')->references('id')->on('users');
            $table->date('date_applied');
            $table->float('applied_amount');
            $table->text('application_reason');
            $table->string('application_status');
            $table->timestamps(); //Adds created_at and updated_at columns

        });
    }
    public function down()
    {
        Schema::dropIfExists('applications');
    }
}
