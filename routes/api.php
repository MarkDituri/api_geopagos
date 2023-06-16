<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\V2\PostController as Post;
use App\Http\Controllers\Api\V2\PlayerController as player;
use App\Http\Controllers\Api\V2\TournamentController as Tournament;

Route::post('login', [
    App\Http\Controllers\Api\LoginController::class,
    'login'
]);

// Posts
// Route::apiResource('v2/posts', Post::class)
//     ->only(['index', 'show'])
//     ->middleware('auth:sanctum');

// // Players
// Route::apiResource('v2/players', player::class)
// ->only(['index', 'show'])
// ->middleware('auth:sanctum');


Route::apiResource('v2/posts', Post::class)
    ->only(['index', 'show']);

// Players
Route::apiResource('v2/players', player::class)
    ->only(['index', 'show']);

// Tournaments
Route::apiResource('v2/tournaments', Tournament::class)
->only(['index', 'show']);
