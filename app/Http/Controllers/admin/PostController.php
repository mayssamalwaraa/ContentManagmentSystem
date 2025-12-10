<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use App\Models\Post;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

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
        $posts = $this->post::with('user','category')->get();
        return view('admin.posts.all',compact('posts'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        $post = $this->post->findOrFail($id);
        return view('admin.posts.edit',compact('post'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $request['approved']= $request->has('approved');
        if ($request->hasFile('image')) {
        Storage::disk('public')->delete($request->image);

        $imageName = time() . '.' . $request->image->extension();

        // Save inside public/uploads/books
        $request->image->move(public_path('storage/images'), $imageName);
        
        $image_path = $imageName;

        }
        $this->post->findOrFail($id)->update($request->all()+['image_path'=>$image_path?? $this->post->findOrFail($id)->image_path]);
        return redirect(route('posts.index'))->with('success','تم تعديل المنشور بنجاح');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $this->post->findOrFail($id)->delete();
        return back()->with('sucess','تم حذف المنشور بنجاح');
    }
}
