<?php

namespace Database\Factories;

use App\Models\Book;
use Carbon\Carbon;
use App\Models\Author;
use Illuminate\Database\Eloquent\Factories\Factory;

class BookFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Book::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'author_id' => Author::all()->random()->id,
            'title' => $this->faker->sentence(5),
            'text' => $this->faker->text(250),
            'created_at' => Carbon::now(),
            'updated_at' => Carbon::now()
        ];
    }
}
