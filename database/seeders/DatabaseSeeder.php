<?php

namespace Database\Seeders;

use App\Models\Skill;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        \App\Models\User::factory(10)->create();
        \App\Models\Skill::factory(32)->create();
        \App\Models\Player::factory(32)->create();
        \App\Models\Tournament::factory(2)->create();
    }
}
