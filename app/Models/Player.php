<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Player extends Model
{
    use HasFactory;

    // protected $primaryKey = 'id_player'; // Definir la clave primaria personalizada

    // protected $fillable = ['id_player', 'first_name', 'age', 'gender', 'slug'];

    public function Skill()
    {
        return $this->belongsTo(Skill::class);
    }

    public function getPublishedAtAttribute()
    {
        return $this->created_at->format('d/m/Y');
    }

    public function user()
    {
        return $this->belongsTo(User::class);
    }
}