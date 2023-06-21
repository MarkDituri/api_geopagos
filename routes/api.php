<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\V2\PlayerController as player;
use App\Http\Controllers\Api\V2\TournamentController as Tournament;
use App\Http\Controllers\Api\V2\StartController as Start;

Route::post('login', [
    App\Http\Controllers\Api\LoginController::class,
    'login'
]);

// Players
Route::apiResource('v2/players', player::class)
    ->only(['index', 'show']);

// Tournaments
Route::apiResource('v2/tournaments', Tournament::class)
->only(['index', 'show']);

// Start
Route::apiResource('v2/start', Start::class)
->only(['index', 'show']);
