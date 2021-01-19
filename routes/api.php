<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/
Route::group (['prefix'=> '/auth'], function(){
    Route::post('/login','AuthController@login');
    Route::post('/register','AuthController@register');
    
});

Route::group (['middleware' => 'api' , 'prefix' => '/products'], function()
{
    Route::get('/', 'ProductController@index');
    Route::post('/create', 'ProductController@create');
    Route::put('/update/{id}', 'ProductController@update');
    Route::delete('/delete/{id}', 'ProductController@delete');

});
Route::group (['middleware' => 'api' , 'prefix' => '/todos'], function(){
    Route::get('/','TodoContoller@index');
    Route::post('/create_todo', 'TodoContoller@create_todo');
    Route::put('/update_todo/{id}', 'TodoContoller@update_todo');
    Route::delete('/delete_todo/{id}', 'TodoContoller@delete_todo');


});

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});
