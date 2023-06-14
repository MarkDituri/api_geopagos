<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

use App\Http\Controllers\Api\V1\PostController as PostV1;
use App\Http\Controllers\Api\V2\PostController as PostV2;
use App\Http\Controllers\Api\V2\PlayerController as player;
// V1
Route::apiResource('v1/posts', PostV1::class)
    ->only(['index', 'show', 'destroy'])
    ->middleware('auth:sanctum');


Route::post('login', [
    App\Http\Controllers\Api\LoginController::class,
    'login'
]);

// Posts
Route::apiResource('v2/posts', PostV2::class)
    ->only(['index', 'show'])
    ->middleware('auth:sanctum');

// Players
Route::apiResource('v2/players', player::class)
->only(['index', 'show'])
->middleware('auth:sanctum');
