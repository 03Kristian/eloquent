<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

class HuespedFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'nombre'=> $this->faker->name(),
            'apellido'=> $this->faker->lastName(),
            'telefono'=> $this->faker->numberBetween(),
            'correo'=> $this->faker->email(),
            'direccion'=> $this->faker->address(),
            'ciudad'=> $this->faker->state(),
            'pais'=> $this->faker->country(),
        ];
    }
}
