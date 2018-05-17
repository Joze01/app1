<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/

Route::get('/','keywordController@index');

Route::get('ubicacion/categoria/{dato?}','ubicacionController@categoria');
Route::get('ubicacion/categoria/{dato?}/{limite}','ubicacionController@categoriaLimit');
Route::get('ubicacion/search/{dato?}','ubicacionController@search');
Route::get('ubicacion/tipo/{dato?}','ubicacionController@tipo');

Route::get('ubicacion/geo/{lat?}/{lon?}','ubicacionController@geo');
Route::get('ubicacion/listado','ubicacionController@listado');



/*REST*/
Route::resource('keyword','keywordController');
Route::resource('ubicacion','ubicacionController');
