<?php

namespace App\Http\Controllers;

use App\Models\Post;
use Illuminate\Container\Attributes\Auth;
use Illuminate\Http\Request;

class PostController extends Controller
{
    public $post;
    public function __construct(Post $post)
    {
        $this->post = $post;

    }
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $posts = $this->post::with('user:id,name,profile_photo_path')->approved()->paginate(2);
        $title='جميع المنشورات';
        return view('index',compact('posts','title'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('posts.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'title'=>'required',
            'title'=>'skug',
            'body'=>'required',
            'user_id'=>'required',
            'category_id'=>'required'
        ]);
        $post = new Post;
        $post->title = $request->title;
        $post->slug = $request->title;
        $post->body = $request->body;
        $post->user_id = $request->user()->id;
        $post->category_id = $request->category_id;

        
       
         if ($request->hasFile('image')) {

        $imageName = time() . '.' . $request->image->extension();

        // Save inside public/uploads/books
        $request->image->move(public_path('storage/images'), $imageName);
        
        $post->image_path = 'images/'.$imageName;

    }

        $post->save();
        return back()->with('success','تم إضافة المنشور بنجاح.سيظهر بعد أن يوافق عليه المسؤول');
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        $post = $this->post::where('id',$id)->first();
        return view('posts.show',compact('post'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
    public function search(Request $request){
        $posts = $this->post::where('body','LIKE','%'.$request->keyword.'%')->with('user')->approved()->paginate(10);
        $title = "نتائج البحث عن :".$request->keyword;
        return view('index',compact('posts','title'));
    }
}
