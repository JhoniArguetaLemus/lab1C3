<?php
use App\Http\Controllers\Hospital_controller;
use Illuminate\Routing\RouteGroup;
use Illuminate\Support\Facades\Route;


Route::get('/', [Hospital_controller::class, 'vista'])->name('home');
#pagina sobre nosotros
Route::get('/home/sobre_nosotros', [Hospital_controller::class, 'sobre_nosotros'])->name('sobre_nosotros');
#muestra interfaz para agregar paciente
Route::get('/agregar_paciente', [Hospital_controller::class, 'agrega_paciente'])->name('agregar_paciente');
#mostrar interfaz para agregar medico
Route::get('/agregar_medico', [Hospital_controller::class, 'formulario_medico'])->name('medicos.agregar');

#muestra los medicos
Route::get('/medicos', [Hospital_controller::class, 'mostrar_medicos'])->name('medicos.mostrar');
#muestra los pacientes 
Route::get('/pacientes/mostrar', [Hospital_controller::class, 'mostrar_paciente'])->name('pacientes.mostrar');
#guarda los pacientes
Route::post('/pacientes/guardar', [Hospital_controller::class, 'guardar'])->name('paciente.guardar');
#guarda medicos en la base de datos
Route::post('/guardar_medico', [Hospital_controller::class, 'guardar_medico'])->name('medico.guardar');

#eliminar paciente
Route::delete('/pacientes/{paciente}', [Hospital_controller::class, 'eliminar_paciente'])->name('pacientes.eliminar');

#eliminar medicos

Route::delete('medicos/{medico}', [Hospital_controller::class, 'eliminar_medico'])->name('medicos.eliminar');

#ediciion de registros

Route::get('/medicos/{id}/editar', [Hospital_controller::class, 'vista_editar_medico'])->name('medicos.editar');
Route::put('/medicos/{id}', [Hospital_controller::class, 'actualizar_medico'])->name('medicos.actualizar');

#paciente

Route::get('/pacientes/{id}/editar', [Hospital_controller::class, 'vista_editar_paciente'] )->name('paciente.editar');
Route::put('/pacientes/{id}', [Hospital_controller::class, 'actualizar_paciente'])->name('pacientes.actualizar');

