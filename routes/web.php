<?php

use App\Http\Controllers\CommentController;
use App\Http\Controllers\NotificationController;
use App\Http\Controllers\PostController;
use App\Http\Controllers\UserController;
use Illuminate\Support\Facades\Route;

Route::get('/', [PostController::class,'index']);
Route::resource('/post',PostController::class);
Route::post('/search',[PostController::class,'search'])->name('search');
Route::get('/category/{id}/{search}',[PostController::class,'getByCategory'])->name('category');
Route::resource('/comment',CommentController::class);
Route::post('/reply/store',[CommentController::class,'replyStore'])->name('reply.add');
Route::post('/notification',[NotificationController::class,'index'])->name('notification');
Route::get('/notification',[NotificationController::class,'allNotification'])->name('all.Notification');
Route::get('user/{id}',[UserController::class,'getPostsByUser'])->name('profile');
Route::get('user/{id}/comments',[UserController::class,'getCommentsByUser'])->name('user_comments');


Route::middleware([
    'auth:sanctum',
    config('jetstream.auth_session'),
    'verified',
])->group(function () {
    Route::get('/dashboard', function () {
        return view('dashboard');
    })->name('dashboard');
});
