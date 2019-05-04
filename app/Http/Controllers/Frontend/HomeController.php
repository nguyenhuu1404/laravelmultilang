<?php

namespace App\Http\Controllers\Frontend;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Storage;
use App;

use App\Slider;
use App\Hometel;
use App\Apartment;
use App\Service;
use App\About;

class HomeController extends Controller
{

    function index(){
        $data['title'] = setting('site.title');
        $data['description'] = setting('site.description');
        $slider = Slider::where('status', 1)->where('trang', 'home')->first();
        $data['sliders'] = false;
        if($slider){
            $data['sliders'] = json_decode($slider->images);
        }
        $data['hometels'] = Hometel::where('status', 1)->get();
        $data['apartments'] = Apartment::where(['status' => 1, 'highlight' => 1])->get();
        $data['services'] = Service::where(['status' => 1])->get();
        $data['about'] = About::where('status', 1)->first();
        return view('frontend.home.index', $data);
    }
    function setLang(Request $request){
        if ($request->ajax()) {
            $locale = $request->get('lang');
            session()->put('locale', $locale);
            return 1;
        }
    }
    function lang($lang){
        session()->put('locale', $lang);
        return redirect()->back();
    }

}
