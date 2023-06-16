<?php

namespace Database\Seeders;
// PlayersTableSeeder.php
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
        \App\Models\Post::factory(120)->create();
        \App\Models\Skill::factory(16)->create();
        \App\Models\Player::factory(16)->create();
        \App\Models\Tournament::factory(2)->create();
    }
}
