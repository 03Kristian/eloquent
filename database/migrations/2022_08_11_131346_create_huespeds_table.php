<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateHuespedsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('huespeds', function (Blueprint $table) {
            $table->id();
            $table->string('nombre',45);
            $table->string('apellido',45);
            $table->integer('telefono');
            $table->string('correo',60);
            $table->string('direccion',120);
            $table->string('ciudad',60);
            $table->string('pais',60);
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
        Schema::dropIfExists('huespeds');
    }
}
