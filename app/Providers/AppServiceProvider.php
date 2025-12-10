<?php

namespace App\Providers;

use App\Http\ViewComposers\CategoryComposer;
use App\Http\ViewComposers\CommentComposer;
use App\Http\ViewComposers\PageComposer;
use App\Http\ViewComposers\RoleComposer;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Blade;
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


    }
}
