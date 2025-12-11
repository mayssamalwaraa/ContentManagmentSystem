<?php

namespace App\Http\Controllers;

use App\Helpers\Slug;
use App\Models\Category;
use App\Models\Post;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;

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
            'body'=>'required',
            'category_id'=>'required'
        ]);
        $new_post = new Post;
        $new_post->title = $request->title;
        // $new_post->slug = $request->title;
        $new_post->body = $request->body;
        $new_post->user_id = $request->user()->id;
        $new_post->category_id = $request->category_id;

        
       
         if ($request->hasFile('image')) {

                $imageName = time() . '.' . $request->image->extension();

                // Save inside public/uploads/books
                $request->image->move(public_path('storage/images'), $imageName);
                
                $new_post->image_path = $imageName;

            }

        $new_post->save();
        // return back()->with('success','تم إضافة المنشور بنجاح.سيظهر بعد أن يوافق عليه المسؤول');
        return redirect('/');
    }

    /**
     * Display the specified resource.
     */
    public function show(string $slug)
    {
        $post = $this->post::where('slug',$slug)->first();
        $comments = $post->comments->sortBydesc('created_at');
        return view('posts.show',compact('post','comments'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        $post = $this->post::findOrFail($id);
        abort_unless(Auth::user()->can('edit-post',$post),403);
        return view('posts.edit',compact('post'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Post $post)
    {
        
        $request->validate([
            'title'=>'required',
            'body'=>'required',
        ]);
        $post->title = $request->title;
        $post->body = $request->body;
        $post->slug=Slug::uniqueSlug($request->title,'posts');
        $post->category_id = $request->category_id;
       
         if ($request->hasFile('image')) {
        Storage::disk('public')->delete($post->image_path);

        $imageName = time() . '.' . $request->image->extension();

        // Save inside public/uploads/books
        $request->image->move(public_path('storage/images'), $imageName);
        
        $post->image_path = $imageName;

        }
       

        $post->save();

        return redirect(route('post.show',$post->slug));
        
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $post = $this->post::findOrFail($id);
        abort_unless(Auth::user()->can('delete-post',$post),403);
        Storage::disk('public')->delete($post->image_path);
        $post->delete();
        return back()->with('success','تم حذف المنشور بنجاح ');
    }
    public function search(Request $request){
        $posts = $this->post::where('body','LIKE','%'.$request->keyword.'%')->with('user')->approved()->paginate(10);
        $title = "نتائج البحث عن :".$request->keyword;
        return view('index',compact('posts','title'));
    }
    public function getByCategory($id){
        $posts = $this->post::with('user')->whereCategory_id($id)->approved()->paginate(10);
        $title = "المنشورات العائدة لتصنيف". Category::find($id)->title;
        return view('index',compact('posts','title'));
    }
}
