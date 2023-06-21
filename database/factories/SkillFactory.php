<?php

namespace Database\Factories;

use App\Models\Skill;
use Illuminate\Database\Eloquent\Factories\Factory;

class SkillFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Skill::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [            
            'force' => $this->faker->numberBetween(20, 100),
            'speed' => $this->faker->numberBetween(45, 100),
            'response' => $this->faker->numberBetween(33, 100),
            'luck' => $this->faker->numberBetween(1, 111),       
        ];
    }
}
