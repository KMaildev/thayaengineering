<?php

use App\Http\Controllers\HomeController;
use App\Http\Controllers\AboutController;
use App\Http\Controllers\ContactController;
use App\Http\Controllers\ProjectController;
use Illuminate\Support\Facades\Route;


Route::get('/', [HomeController::class, 'index'])->name('home');
Route::resource('about', AboutController::class);
Route::resource('project', ProjectController::class);
Route::get('detail/{id}', [ProjectController::class, 'detail'])->name('project_detail');
Route::get('project_categories_json', [ProjectController::class, 'ProjectCategoriesJson'])->name('project_categories_json');
Route::resource('contact', ContactController::class);
