<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
   
    public function up(): void
    {
        Schema::create('citas_medicas', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedBigInteger('id_paciente');
            $table->unsignedBigInteger('id_medico');
            $table->date('fecha');
            $table->string('hora');
            $table->string('observaciones')->nullable();
         
            $table->foreign('id_paciente')->references('id_paciente')->on('paciente')->onDelete('cascade');
            $table->foreign('id_medico')->references('id_medico')->on('medicos')->onDelete('cascade');
         
            $table->timestamps();
        });
    }

  
    public function down(): void
    {
        //
    }
};
