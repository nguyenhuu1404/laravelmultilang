<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\View;
use TCG\Voyager\Models\Post;
use App\Slider;
class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        Schema::defaultStringLength(191);
        $news = Post::where(['status' => 1])->orderBy('id', 'desc')->limit(3)->get();
        $ketnoi = Slider::where('status', 1)->where('trang', 'footer')->first();
        View::share(['globalNews' => $news, 'ketnoi' => $ketnoi, 'locale' => session()->get('locale')]);
    }
}
