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
            'id_player' => $this->player_id,
            'first_name' => $this->first_name,
            'last_name' => $this->last_name,
            'age' => $this->age,
            'gender' => $this->gender,
            'slug' => $this->slug,
            'skill_id' => $this->skill_id,
            'created_at' => $this->published_at
        ];
    }
}
