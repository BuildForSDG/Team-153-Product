<?php

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

Route::get('/', 'HomeController@index');


Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
Route::get('/aids', 'AidsController@aids')->name('aids');
Route::get('/aids/search', 'AidsController@search')->name('aids.search');
Route::post('/apply', 'ApplyController@apply')->middleware('auth');
Route::get('/donation/{id}', 'AidsController@show')->middleware('auth');
Route::get('/activity', 'ActivityController@index')->name('activity')->middleware('auth');
Route::get('/application/{id}', 'ActivityController@show')->middleware('auth');
Route::get('/donate', 'DonationController@create')->name('donate')->middleware('auth');
Route::post('/donate', 'DonateController@donate')->middleware('auth');