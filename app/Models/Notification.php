<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Notification extends Model
{
    public function user(){
        $this->belongsTo(User::class);
    }
    public function post(){
        $this->belongsTo(Post::class);
    }
}
