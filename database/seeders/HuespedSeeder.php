<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class HuespedSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        \App\Models\Huesped::factory(30)->create();
    }
}
