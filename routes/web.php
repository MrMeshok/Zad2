<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\BookController;

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

// Route::get('', "/home");
// Route::get('HOME', [HomeController::class, 'redirect']);
Route::get('', [HomeController::class, 'authors']);
Route::get('del_author/{author_id}', [HomeController::class, 'del_author'])->middleware('auth');

Route::get('library/{author_id}', [BookController::class, 'library']);
Route::get('library/del/{book_id}', [BookController::class, 'del'])->middleware('auth');
Route::post('library/add', [BookController::class, 'add'])->middleware('auth');
Route::post('library/edit', [BookController::class, 'edit'])->middleware('auth');
