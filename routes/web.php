<?php

use App\Http\Controllers\PagesController;
use Illuminate\Support\Facades\Route;

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

<<<<<<< HEAD
Route::get('/', function () {
=======
Route::get('/', function(){
>>>>>>> origin
    return view('index');
});

Auth::routes();

<<<<<<< HEAD
/* Route::get('/home', 'HomeController@index')->name('home'); */

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
=======
Route::get('/home', 'HomeController@index')->name('home');

Route::namespace('Admin')->prefix('admin')->name('admin.')->group(function(){
    Route::resource('/users', 'UserController', ['except' => ['show', 'create', 'store']]);
>>>>>>> origin
});
