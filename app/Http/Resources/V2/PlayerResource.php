<?php

namespace App\Http\Resources\V2;

use Illuminate\Http\Resources\Json\JsonResource;

class PlayerResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        return [
            'id' => $this->id_player,
            'name' => $this->first_name,
            'age' => $this->age,
            'gender' => $this->gender,
            'slug' => $this->slug,
            'skills' => [
                'aim' => $this->skill->aim,
                'speed' => $this->skill->speed,
                'energy' => $this->skill->energy,
                'luck' => $this->skill->luck,
            ],
            'created_at' => $this->published_at
        ];
    }
}
