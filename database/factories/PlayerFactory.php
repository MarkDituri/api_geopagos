<?php

namespace Database\Factories;

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
        return [
            'id_player' => rand(1,10),
            'first_name' => $this->faker->sentence,
            'slug' => $this->faker->slug,
            'content' => $this->faker->text(1600)
        ];
    }
}
