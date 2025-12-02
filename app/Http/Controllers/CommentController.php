<?php

namespace App\Http\Controllers;

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
        return back()->with('success','تم إضافة التعليق بنجاح');

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
