<?php

namespace Database\Seeders;

use App\Models\Comment;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class CommentSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $comment1= Comment::create([
            'body' => "شكرًا جزيلًا",
            'post_id' => "1",
            'user_id' => "2",
            'created_at' => "2022-05-10 11:44",
            'commentable_id' => "1",
            'commentable_type' => "App\Models\Post",
        ]);
        $comment2= Comment::create([
            'body' => "مقال مفيد",
            'post_id' => "1",
            'user_id' => "3",
            'created_at' => "2022-04-22 11:44",
            'commentable_id' => "1",
            'commentable_type' => "App\Models\Post",
            
        ]);
        $comment3= Comment::create([
            'body' => "مقال جيد",
            'post_id' => "2",
            'user_id' => "2",
            'created_at' => "2022-03-22 11:44",
            'commentable_id' => "2",
            'commentable_type' => "App\Models\Post",
        ]);
    }
}
