<?php

use Illuminate\Support\Facades\Route;

Route::get('/posts', [App\Http\Controllers\PostController::class, 'posts']);
// Route::get('/players', [App\Http\Controllers\PlayerController::class, 'index']);
