<?php

namespace App\Http\Controllers\Api\V2;

use App\Http\Controllers\Controller;
use App\Models\Player;
use App\Models\Start;
use App\Models\Tournament;
use Illuminate\Http\Request;

use App\Http\Resources\V2\PlayerResource;
use App\Http\Resources\V2\PlayerCollection;

class StartController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    // public function index()
    // {
    //     $tournaments = Tournament::latest()->get();

    //     $players = Player::with('skill')->latest()->get();
        
        
    //     return new PlayerCollection($players['first_name']);
    // }

    public function index()
    {
        $tournaments = Tournament::latest()->get();
        $players = Player::with('skill')->latest()->get();
        
        while ($players->count() > 1) {
            $winners = collect();
            
            // Jugar partidos en la ronda actual
            for ($i = 0; $i < $players->count(); $i += 2) {
                $player1 = $players[$i];
                $player2 = $players[$i + 1];
                
                // Simular el resultado del partido al azar
                $result = mt_rand(1, 2);
                
                // Determinar el ganador del partido
                $winner = ($result == 1) ? $player1 : $player2;
                $winners->push($winner);
            }
            
            // Actualizar la lista de jugadores para la siguiente ronda
            $players = $winners;
        }
        
        $champion = $players[0];
        echo "El campeón del torneo es el jugador número $champion";
    }


    public function show($genero)
    {        
        $tournament = Tournament::where('gender', $genero)->get();
        $players = Player::with('skill')->where('gender', $genero)->latest()->get();
        

        // echo $players;

        while ($players->count() > 1) {
            $winners = collect();
            
            // Jugar partidos en la ronda actual
            for ($i = 0; $i < $players->count(); $i += 2) {
                $player1 = $players[$i];
                $player2 = $players[$i + 1];
                
                // Simular el resultado del partido al azar
                $result = mt_rand(1, 2);
                
                // Determinar el ganador del partido
                $winner = ($result == 1) ? $player1 : $player2;
                $winners->push($winner);
            }
            
            // Actualizar la lista de jugadores para la siguiente ronda
            $players = $winners;
        }
        
        $champion = $players[0];

        echo "El campeón del torneo es el jugador número $champion";
        // return new Tournament($tournament);
    }
}
