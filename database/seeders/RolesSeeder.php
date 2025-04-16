<?php

namespace Database\Seeders;

use App\Models\Role;
use Illuminate\Database\Seeder;

class RolesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Role::create(['description'=>'Overlord']);
        Role::create(['description'=>'Minion']);
        Role::create(['description'=>'Candidate']);
    }
}
