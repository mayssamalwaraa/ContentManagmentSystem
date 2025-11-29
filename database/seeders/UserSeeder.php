<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $user1=User::create([
            'id' => 1,
            'name' => "Eyad Hasan",
            'email' => "admin@gmail.com",
            'email_verified_at' => now(),
            'password' => bcrypt('11111111'),
            'role_id' => 1
            
        ]);
        $user2=User::create([
            'id' => 2,
            'name' => "Hasan dani",
            'email' => "user@gmail.com",
            'email_verified_at' => now(),
            'password' => bcrypt('11111111'),
            'role_id' => 2,
            
        ]);
        $user3=User::create([
             'id' => 3,
            'name' => "Mohamed Ali",
            'email' => "user2@gmail.com",
            'email_verified_at' => now(),
            'password' => bcrypt('11111111'),
            'role_id' => 2,
            
        ]);
    }
}
