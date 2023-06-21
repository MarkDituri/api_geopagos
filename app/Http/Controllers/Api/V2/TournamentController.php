<?php

namespace App\Http\Controllers\Api\V2;

use App\Http\Controllers\Controller;
use App\Models\Tournament;

use App\Http\Resources\V2\TournamentResource;
use App\Http\Resources\V2\TournamentCollection;

class TournamentController extends Controller
{
    public function index()
    {
        return new TournamentCollection(Tournament::latest()->get());
    }

    public function show($gender)
    {
        return new TournamentCollection(Tournament::where('gender', $gender)->latest()->get());
    }
}
