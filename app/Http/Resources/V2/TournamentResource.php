<?php

namespace App\Http\Resources\V2;
use Illuminate\Http\Resources\Json\JsonResource;

class TournamentResource extends JsonResource
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
            'id' => $this->id,
            'name' => $this->name,
            'type' => $this->type,
            'year' => $this->year,
            'gender' => $this->gender,
            'slug' => $this->slug,       
            'created_at' => $this->published_at,
        ];
    }
}
