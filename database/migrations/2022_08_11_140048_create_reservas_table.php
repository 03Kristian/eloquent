<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateReservasTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('reservas', function (Blueprint $table) {
            $table->id();
            $table->date('inicio_fecha');
            $table->date('fin_fecha');
            //!>------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
            $table->unsignedBigInteger('habitacion');
            $table->foreign('habitacion')->references('id')->on('habitaciones')->onDelete('cascade')->onUpdate('cascade');

            $table->unsignedBigInteger('huesped');
            $table->foreign('huesped')->references('id')->on('huespeds')->onDelete('cascade')->onUpdate('cascade');

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
        Schema::dropIfExists('reservas');
    }
}
