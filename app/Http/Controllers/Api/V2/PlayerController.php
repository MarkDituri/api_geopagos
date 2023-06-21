<?php

namespace App\Http\Controllers\Api\V2;

use App\Http\Controllers\Controller;
use App\Models\Player;

use App\Http\Resources\V2\PlayerResource;
use App\Http\Resources\V2\PlayerCollection;

class PlayerController extends Controller
{
    public function index()
    {
        $players = Player::with('skill')->latest()->get();

        return new PlayerCollection($players);
    }

    public function show($slug)
    {        
        $player = Player::where('slug', $slug)->first();        
        if (!$player) {
            return response()->json(['message' => 'Jugador no encontrado'], 404);
        }
        $player->load('skill');

        return new PlayerResource($player);
    }
}
