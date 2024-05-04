<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class citas_medicas extends Model
{
    protected $table = 'citas_medicas';

    protected $fillable = ['id', 'id_paciente', 'id_medico', 'fecha', 'hora', 'observaciones'];

    public $timestamps = false;
}
