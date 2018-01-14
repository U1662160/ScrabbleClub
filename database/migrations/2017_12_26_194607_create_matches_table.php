<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateMatchesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        if(!Schema::hasTable('matches')){
        Schema::create('matches', function (Blueprint $table) {
            $table->increments('id');
            $table->string('player1');
            $table->string('player2');
            $table->string('place')->nullable();
            $table->timestamp('date')->nullable();
            $table->smallInteger('player1_score')->nullable();
            $table->smallInteger('player2_score')->nullable();
            $table->timestamps();
        });
    }
  }
    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('matches');
    }
}
