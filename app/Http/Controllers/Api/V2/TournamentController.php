<?php

namespace App\Http\Controllers\Api\V2;

use App\Http\Controllers\Controller;
use App\Models\Player;
use App\Models\Tournament;
use Illuminate\Http\Request;

use App\Http\Resources\V2\PlayerResource;
use App\Http\Resources\V2\PlayerCollection;
use App\Http\Resources\V2\TournamentResource;
use App\Http\Resources\V2\TournamentCollection;

class TournamentController extends Controller
{
    public function index()
    {
        return new TournamentCollection(Tournament::latest()->paginate());
    }

    public function show(Tournament $tournament)
    {
        // Cargar la relación skill        

        return new TournamentResource($tournament);
    }
}