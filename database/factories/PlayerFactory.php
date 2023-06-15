<?php

namespace Database\Factories;

use App\Models\Skill;
use App\Models\Player;
use Illuminate\Database\Eloquent\Factories\Factory;

class PlayerFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Player::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        static $playerId = 1;
        static $skillId = 1; 

        return [
            'player_id' => $playerId++,
            'first_name' => $this->faker->firstName(),
            'last_name' => $this->faker->lastName(),            
            'age' => $this->faker->numberBetween(18, 40),
            'gender' => $this->faker->randomElement(['Male', 'Female']),
            'country' => $this->faker->country(),
            'slug' => $this->faker->slug(),
            'skill_id' => $skillId++, // Asignar el ID relacionado y aumentar el contador
            'created_at' => $this->faker->dateTimeBetween('-1 year', 'now'),
        ];
    }
}
