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
            'force' => $this->force,
            'speed' => $this->speed,
            'response' => $this->response,
            'luck' => $this->luck,                 
        ];
    }
}
