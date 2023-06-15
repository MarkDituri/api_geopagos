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
            'aim' => $this->aim,
            'speed' => $this->speed,
            'energy' => $this->energy,
            'luck' => $this->luck,                 
        ];
    }
}
