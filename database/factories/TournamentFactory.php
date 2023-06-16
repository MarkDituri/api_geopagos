<?php

namespace Database\Factories;

use Carbon\Carbon;
use App\Models\Tournament;
use Illuminate\Database\Eloquent\Factories\Factory;

class TournamentFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Tournament::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        static $genderOptions = ['male', 'female'];
        $year = Carbon::now()->year;

        $gender = array_shift($genderOptions);
        array_push($genderOptions, $gender);

        return [
            'name' => $this->faker->firstName.' Cup '.$year,
            'type' => 'playoffs',
            'year' => $year,
            'gender' => $gender,
            'slug' => $this->faker->slug,
            'created_at' => $this->faker->dateTimeBetween('-1 year', 'now'),
        ];
    }
}
