<?php

namespace App\Http\Controllers\Api\V2;

use App\Http\Controllers\Controller;
use App\Models\Player;
use App\Models\Tournament;
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


    public function show($gender)
    {
        $playoff = [];
        $winnerCup = [];        
        $tournament = Tournament::where('gender', $gender)->latest()->get();
        $player = Player::with('skill')->where('gender', $gender)->latest()->get();    
        $players = new PlayerCollection($player);
        $numPlayers = $players->count();

        if ($numPlayers < 2) {
            return ['msg' => 'Error in players'];
        } else {
            $players = $players->shuffle();
            $phases = ["8tavos", "4tos", "Semifinals", "Final"];
            $phaseIndex = 0;

            while ($numPlayers > 1 && $phaseIndex < count($phases)) {
                $phaseResults = [];
                $phase = $phases[$phaseIndex];

                for ($i = 0; $i < $numPlayers; $i += 2) {
                    $player1 = $players[$i];
                    $player2 = $players[$i + 1];
                    list($winner, $loser) = $this->compareSkills($player1, $player2, $gender);

                    $phaseResults[] = [
                        'player1' => [
                            'data' => $player1,
                            'winner' => $player1 === $winner,
                            'loser' => $player1 === $loser,
                        ],
                        'player2' => [
                            'data' => $player2,
                            'winner' => $player2 === $winner,
                            'loser' => $player2 === $loser,
                        ],
                    ];
                }

                $playoff[$phase] = $phaseResults;

                $players = collect($phaseResults)
                    ->flatMap(function ($result) {
                        $player1Data = $result['player1']['winner'] ? $result['player1']['data'] : null;
                        $player2Data = $result['player2']['winner'] ? $result['player2']['data'] : null;

                        $filteredData = array_filter([$player1Data, $player2Data]);

                        return $filteredData;
                    })
                    ->values();

                $phaseIndex++;
                $numPlayers = $players->count();
            }

            if (!empty($playoff['Final']) && count($playoff['Final']) === 1) {
                $finalMatch = $playoff['Final'][0];
                $winnerData = $finalMatch['player1']['winner'] ? $finalMatch['player1']['data'] : $finalMatch['player2']['data'];
                $winnerCup['players'] = $winnerData;
            }
        }

        return ['playoff' => $playoff, 'winnerCup' => $winnerCup, 'tournament' => $tournament];
    }

    private function compareSkills($player1, $player2)
    {
        $totalSkillsPlayer1 = $player1->skill->force + $player1->skill->speed + $player1->skill->response;
        $totalSkillsPlayer2 = $player2->skill->force + $player2->skill->speed + $player2->skill->response;

        $averageLuckPlayer1 = $player1->skill->luck;
        $averageLuckPlayer2 = $player2->skill->luck;

        // Calculate total skills and consider priority based on gender
        $totalSkillsPlayer1 += ($player1->gender === 'female')
            ? $averageLuckPlayer1 + $player1->skill->response
            : $averageLuckPlayer1 + $player1->skill->force + $player1->skill->speed;

        $totalSkillsPlayer2 += ($player2->gender === 'female')
            ? $averageLuckPlayer2 + $player2->skill->response
            : $averageLuckPlayer2 + $player2->skill->force + $player2->skill->speed;

        // Return the winner and loser
        return ($totalSkillsPlayer1 > $totalSkillsPlayer2)
            ? [$player1, $player2]
            : [$player2, $player1];
    }
}
