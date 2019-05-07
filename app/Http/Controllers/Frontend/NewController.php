<?php

namespace App\Http\Controllers\Frontend;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

use Illuminate\Support\Facades\Storage;

use TCG\Voyager\Models\Post;
use TCG\Voyager\Models\Category;
use Illuminate\Support\Str;
use App\Slider;

class NewController extends Controller
{
    public function index(){
        $data['title'] = 'Tin tức';
        $data['description'] = 'Tin tức';
        $data['slider'] = Slider::where('status', 1)->where('trang', 'new')->first();
        $topNews = Post::where('status', 1)->orderBy('id', 'desc')->limit(3)->get();
        //dd($topNews[2]->authorId->first()->name);
        $data['topNews'] = $topNews;
        $topNewIds = [];
        foreach($topNews as $topNew){
            $topNewIds[] = $topNew['id'];
        }
        $data['news'] = Post::where('status', 1)->orderBy('id', 'desc')->whereNotIn('id', $topNewIds)->paginate(10);
        return view('frontend.news.index', $data);
    }
    function detail($id){
        $post = Post::where('id', $id)->first();
        $data['slider'] = Slider::where('status', 1)->where('trang', 'new')->first();
        $data['title'] = $post->title;
        $data['description'] = $post->meta_description;
        $data['keywords'] = $post->meta_keywords;
        $data['post'] = $post;
        $data['related'] = [];
        if( $post['category_id'] ){
            $data['related'] = Post::where(['category_id' => $post['category_id']])->whereNotIn('id',[$id])->limit(3)->get();
        }

        return view('frontend.news.detail', $data);
    }
    public function category($categoryId){
        $category = Category::where('id', $categoryId)->get();
        $data['title'] = $category->first()->name;
        $data['description'] = $category->first()->name;

        $data['slider'] = Slider::where('status', 1)->where('trang', 'new')->first();
        $topNews = Post::where('status', 1)->orderBy('id', 'desc')->where('category_id', $categoryId)->limit(3)->get();
        //dd($topNews[2]->authorId->first()->name);
        $data['topNews'] = $topNews;
        $topNewIds = [];
        foreach($topNews as $topNew){
            $topNewIds[] = $topNew['id'];
        }
        $data['news'] = Post::where('status', 1)->where('category_id', $categoryId)->whereNotIn('id', $topNewIds)->orderBy('id', 'desc')->paginate(10);

        return view('frontend.news.category', $data);
    }
}
