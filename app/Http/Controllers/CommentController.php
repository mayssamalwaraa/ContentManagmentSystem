<?php

namespace App\Http\Controllers;

use App\Events\CommentNotification;
use App\Models\Comment;
use App\Models\Post;
use Illuminate\Http\Request;

class CommentController extends Controller
{
    public $comment;
    public function __construct(Comment $comment)
    {
        $this->comment = $comment;
    }
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
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
        $request->validate([
            'body'=>'required'
        ]);
        $comment = $this->comment;
        $comment->body = $request->body;
        $comment->user()->associate($request->user());
        $comment->post_id = $request->post_id;
        $post = Post::find($request->post_id);
        $post->comments()->save($comment);

        $data = [
            'post_title'=>$post->title,
            'post'=>$post,
            'user_name'=>$request->user()->name,
            'user_image'=>$request->user()->profile_photo_url
        ];
        event( new CommentNotification($data));
        return back()->with('success','تم إضافة التعليق بنجاح');

    }
    public function replyStore(Request $request){
        $request->validate([
            'comment_body'=>'required',
        ]);
        $reply = new Comment();
        $reply->body = $request->comment_body;
        $reply->user()->associate($request->user());
        $reply->parent_id = $request->comment_id;
        $reply->post_id=$request->post_id;
        $post = Post::findOrFail($request->post_id);

        $post->comments()->save($reply);

        return back()->with('success','تم إضافة الرد بنجاح');
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

}
