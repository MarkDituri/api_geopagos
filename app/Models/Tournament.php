<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Carbon;

class Tournament extends Model
{
    use HasFactory;

    public function getFormattedCreatedAtAttribute()
    {
        $carbonDate = Carbon::parse($this->created_at);
        return $carbonDate->format('d/m/Y H:i:s');
    }

    public function user()
    {
        return $this->belongsTo(User::class);
    }
}
