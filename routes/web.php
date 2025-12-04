<?php

use App\Http\Controllers\CommentController;
use App\Http\Controllers\NotificationController;
use App\Http\Controllers\PostController;
use Illuminate\Support\Facades\Route;

Route::get('/', [PostController::class,'index']);
Route::resource('/post',PostController::class);
Route::post('/search',[PostController::class,'search'])->name('search');
Route::get('/category/{id}/{search}',[PostController::class,'getByCategory'])->name('category');
Route::resource('/comment',CommentController::class);
Route::post('/reply/store',[CommentController::class,'replyStore'])->name('reply.add');
Route::post('/notification',[NotificationController::class,'index'])->name('notification');

Route::middleware([
    'auth:sanctum',
    config('jetstream.auth_session'),
    'verified',
])->group(function () {
    Route::get('/dashboard', function () {
        return view('dashboard');
    })->name('dashboard');
});
