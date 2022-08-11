<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Habitaciones;
use App\Models\Huesped;
use App\Models\User;
use App\Models\Reserva;
use DB;

class PruebasController extends Controller
{
    public function consulta1(){

        $query1 = Huesped::select('huespeds.id', 'huespeds.nombre', 'huespeds.apellido', 'huespeds.telefono' ,'huespeds.correo','habitaciones.ducha', 'habitaciones.bano')
        ->join('reservas', 'huespeds.id','=','reservas.huesped')->join('habitaciones', 'huespeds.id','=','habitaciones.id')
        ->where('habitaciones.ducha','=','si')->get();

        return$query1;
        
    }

    public function consulta2() {

        $query2 = Reserva::select('huespeds.nombre')->select(DB::raw('count(reservas.huesped) as veces'))->join('huespeds','reservas.huesped','=','huespeds.id')
        ->groupby('huespeds.nombre')->get();
        return $query2;
        // $query2 = Reserva::select('huespeds.nombre')->selectRaw('count(reservas.huesped) as veces')->join('huespeds','reservas.huesped','=','huespeds.id')
        // ->groupby('huespeds.nombre')->get();
        // return $query2;
    }
}
