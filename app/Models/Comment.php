<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Comment extends Model
{
    public function commentable(){
        $this->morphTo();
    }
    public function user(){
        $this->belongsTo(User::class);
    }
    public function post(){
        $this->belongsTo(Post::class);
    }
    public function replies(){
        $this->hasMany(Comment::class,'parent_id');
    }
}
