<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Skill extends Model
{
    use HasFactory;

    // Define los campos de la tabla 'skills'
    protected $fillable = [
        'aim',
        'speed',
        'energy',
        'luck',
    ];
}