<?php

use Illuminate\Support\Facades\Route;
// use App\Http\Controllers\PruebasController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::get('/consulta',[App\Http\Controllers\PruebasController::class,'consulta1'])->name('consulta1');

Route::get('/consulta2',[App\Http\Controllers\PruebasController::class,'consulta2'])->name('consulta2');

Route::get('/consulta4',[App\Http\Controllers\PruebasController::class,'consulta4'])->name('consulta4');

