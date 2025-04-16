<?php

use App\Http\Controllers\Api\Jobs\JobsController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\LoginController;
use App\Http\Controllers\Api\Users\UserInfoController;

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

Route::post('login',LoginController::class.'@login');

/*
Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
*/


Route::middleware('auth:sanctum')->get('users/me',UserInfoController::class.'@userInfo');
Route::middleware('auth:sanctum')->get('jobs',JobsController::class.'@jobs');
Route::middleware('auth:sanctum')->get('jobs/{id}',JobsController::class.'@view');
Route::middleware('auth:sanctum')->put('jobs/{id}',JobsController::class.'@update');
Route::middleware('auth:sanctum')->delete('jobs/{id}',JobsController::class.'@delete');
Route::middleware('auth:sanctum')->post('jobs',JobsController::class.'@create');
Route::middleware('auth:sanctum')->get('companies',UserInfoController::class.'@userInfo');

