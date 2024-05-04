<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\paciente;
use App\Models\medicos;
use Symfony\Component\HttpKernel\Debug\VirtualRequestStack;
class Hospital_controller extends Controller
{
    public function vista(){
        return view('home');
    }

    public function sobre_nosotros(){
        return view('about');
    }

    public function agrega_paciente(){
        return view('agregar_paciente');

        
        
    }

    public function guardar(Request $request){
         paciente::create($request->all());
         return redirect()->route('pacientes.mostrar')->with('success', 'Paciente eliminado correctamente');


    }

    public function guardar_medico(Request $request){
        medicos::create($request->all());
        return redirect()->route('medicos.mostrar')->with('success', 'Medico guardado correctamente');



    }

    #mostrar medicos
    public function mostrar_medicos(){
       $medicos=medicos::all();
       return view('mostrar_medicos', compact('medicos'));
    }
    #mostrar pacientes
    public function mostrar_paciente(){
        $pacientes=paciente::all();

        return view('mostrar_paciente', compact('pacientes'));

    }

    public function eliminar_paciente($id){
        $paciente=paciente::findOrFail($id);

        $paciente->delete();


        return redirect()->route('pacientes.mostrar')->with('success', 'Paciente eliminado correctamente');

    }

    #eliminar medicos
    public function eliminar_medico($id){
        $medico=medicos::findOrFail($id);
        $medico->delete();

        return redirect()->route('medicos.mostrar')->with('success', 'Medico eliminado correctamente');
    }

    public function formulario_medico(){
        return view ('agregar_medico');
    }

    public function vista_editar_medico($id){
        $medico=medicos::findOrFail($id);
        
       return view('editar_medico', compact('medico'));

    }
    
    public function actualizar_medico(Request $request, $id){
        $medico=medicos::findOrFail($id);

        $medico->nombre=$request->input('nombre');
        $medico->apellido=$request->input('apellido');
        
        $medico->especialidad=$request->input('especialidad');
        
        $medico->horario_consultas=$request->input('horario_consultas');
        $medico->telefono=$request->input('telefono');
        
        $medico->correo=$request->input('correo');
        
        $medico->save();

        return redirect()->route('medicos.mostrar')->with('success', 'Medico actualizado');
        
    }

    public function vista_editar_paciente($id){
        $paciente=paciente::findOrFail($id);

        return view('editar_paciente', compact('paciente'));
    }

    public function actualizar_paciente(Request $request, $id){
        $paciente=paciente::findOrFail($id);
        $paciente->nombre=$request->input('nombre');
        $paciente->apellido=$request->input('apellido');
        $paciente->fecha_nacimiento=$request->input('fecha_nacimiento');
        $paciente->genero=$request->input('genero');
        $paciente->direccion=$request->input('direccion');
        $paciente->telefono=$request->input('telefono');
        $paciente->correo=$request->input('correo');

        


        $paciente->save();

        return redirect('pacientes.mostrar')->with('Success', 'Paciente actualizado correctamente');
    }


}
