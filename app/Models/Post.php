<?php

namespace App\Models;

use App\Helpers\Slug;
use Illuminate\Database\Eloquent\Casts\Attribute;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Str;

class Post extends Model
{
    protected $fillable = ['title','slug','approved','image_path','body','category_id'];
   
    public function category(){
        return $this->belongsTo(Category::class);
    }
    public function user(){
        return $this->belongsTo(User::class);
    }
    public function comments(){
        return $this->morphMany(Comment::class,'commentable')->whereNull('parent_id');
    }
    public function scopeApproved($query){
        return $query->whereApproved(1)->latest();
    }
    protected function title():Attribute{
        return Attribute::make(
            set : fn($value) =>[
                'title'=>$value,
                'slug'=>Slug::uniqueSlug($value,'posts'),
            ],
        );
    }
}
