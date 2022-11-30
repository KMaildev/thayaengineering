<?php

use App\Http\Controllers\HomeController;
use App\Http\Controllers\AboutController;
use App\Http\Controllers\ContactController;
use App\Http\Controllers\ProjectController;
use App\Http\Controllers\ServiceController;
use Illuminate\Support\Facades\Route;


Route::get('/', [HomeController::class, 'index'])->name('home');
Route::resource('about', AboutController::class);
Route::resource('project', ProjectController::class);
Route::get('detail/{id}', [ProjectController::class, 'detail'])->name('project_detail');

Route::resource('service', ServiceController::class);
Route::get('service_detail/{id}', [ServiceController::class, 'serviceDetail'])->name('service_detail');

Route::resource('contact', ContactController::class);
