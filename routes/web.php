<?php

use App\Http\Controllers\HomeController;
use App\Http\Controllers\AboutController;
use App\Http\Controllers\ContactController;
use App\Http\Controllers\DownloadController;
use App\Http\Controllers\DownloadUserController;
use App\Http\Controllers\NewsController;
use App\Http\Controllers\ProductController;
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
Route::resource('news', NewsController::class);
Route::resource('product', ProductController::class);

Route::resource('download', DownloadController::class);
Route::get('download_detail/{id}', [DownloadController::class, 'detail'])->name('download_detail');
Route::get('store_download_history', [DownloadUserController::class, 'StoreDownloadHistory'])->name('store_download_history');

Route::resource('download_user', DownloadUserController::class);
