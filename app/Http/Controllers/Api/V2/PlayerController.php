<?php

namespace App\Http\Controllers\Api\V2;

use App\Http\Controllers\Controller;
use App\Models\Player;
use Illuminate\Http\Request;

use App\Http\Resources\V2\PlayerResource;
use App\Http\Resources\V2\PlayerCollection;

class PlayerController extends Controller
{
    public function index()
    {
        $players = Player::with('skill')->latest()->paginate();

        return new PlayerCollection($players);
    }

    public function show(Player $player)
    {
        // Cargar la relación skill
        $player->load('skill');

        return new PlayerResource($player);
    }
}
