<?php

namespace App\Providers;

use App\Http\ViewComposers\CategoryComposer;
use App\Http\ViewComposers\CommentComposer;
use App\Http\ViewComposers\PageComposer;
use App\Http\ViewComposers\RoleComposer;
use App\Models\Permission;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Blade;
use Illuminate\Support\Facades\Gate;
use Illuminate\Support\Facades\View;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register(): void
    {
        //
    }

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {
        View::composer(['partials.sidebar','lists.categories'],CategoryComposer::class);
        View::composer('lists.roles',RoleComposer::class);
        View::composer('partials.sidebar',CommentComposer::class);
        View::composer('partials.navbar',PageComposer::class);

        Blade::if('admin',function(){
            return Auth::check() && Auth::user()->isAdmin();
        });
        // Gate::define('delete-post',function($user , $post){
        //     return $user->hasAllow('delete-post') && ($user->id == $post->user_id || $user->isAdmin());
        
        // });
        // Gate::define('edit-post',function($user , $post){
        //     return $user->hasAllow('edit-post') && ($user->id == $post->user_id || $user->isAdmin());
        
        // });
        // Permission::get(['name'])->map(function($per){
        //     Gate::define($per->name,function($user , $post) use ($per){
        //     return $user->hasAllow($per->name) && ($user->id == $post->user_id || $user->isAdmin());
        //     });
        // });
        Permission::whereIn('name',['edit-post','delete-post','add-post'])->get()->map(function($per){
            Gate::define($per->name,function($user , $post) use ($per){
            return $user->hasAllow($per->name) && ($user->id == $post->user_id || $user->isAdmin());
            });
        });
        Permission::whereIn('name',['edit-user','delete-user','add-user'])->get()->map(function($per){
            Gate::define($per->name,function($user ) use ($per){
            return $user->hasAllow($per->name) && $user->isAdmin();
            });
        });
        


    }
}
