<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

class HabitacionFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'precio_por_noche'
'piso'
'max_personas'
'cama_bebe'
'ducha'
'bano'
'balcon'
        ];
    }
}
