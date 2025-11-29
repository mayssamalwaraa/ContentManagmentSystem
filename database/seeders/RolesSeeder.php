<?php

namespace Database\Seeders;

use App\Models\Role;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class RolesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $role1= Role::create([
             'id' => 1,
            'role' => 'مدير'

        ]);
        $role2= Role::create([
            'id' => 2,
            'role' => 'مستخدم جديد'
            
        ]);
        $role3= Role::create([
            'id' => 3,
            'role' => 'مستخدم فعال'
            
        ]);
    }
}
