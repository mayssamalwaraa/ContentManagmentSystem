<?php

namespace Database\Seeders;

use App\Models\Category;
use Carbon\Carbon;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class CategorySeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $category1=Category::create([
            'name' => "سياسة",
            'slug' => "سياسة",
            'created_at' => Carbon::now()->format('Y-m-d H:i:s'),
        ]);

        $category2=Category::create([
            'name' => "ثقافة",
            'slug' => "ثقافة",
            'created_at' => Carbon::now()->format('Y-m-d H:i:s'),
        ]);

        $category3=Category::create([
            'name' => "إقتصاد",
            'slug' => "إقتصاد",
            'created_at' => Carbon::now()->format('Y-m-d H:i:s'),
        ]);
        
        $category4=Category::create([
            'name' => "فن",
            'slug' => "فن",
            'created_at' => Carbon::now()->format('Y-m-d H:i:s'),
        ]);

        
        $category5=Category::create([
            'name' => "تعليم",
            'slug' => "تعليم",
            'created_at' => Carbon::now()->format('Y-m-d H:i:s'),
        ]);

        
        $category6=Category::create([
            'name' => "تكنولوجيا",
            'slug' => "تكنولوجيا",
            'created_at' => Carbon::now()->format('Y-m-d H:i:s'),
        ]);
        
    }
}
