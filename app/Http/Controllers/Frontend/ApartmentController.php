<?php

namespace App\Http\Controllers\Frontend;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use TCG\Voyager\Models\Post;
use App\Apartment;
use Illuminate\Support\Str;
use App\Booking;


class ApartmentController extends Controller
{
    public function index($hometelId, $id){
        $apartment = Apartment::where('id', $id)->first();
        $data['otherApartments'] = Apartment::where('hometel_id', $apartment->hometel_id)->whereNotIn('id',[$id])->where('status', 1)->limit(4)->get();
        $data['title'] = $apartment->name;
        $data['description'] = $apartment->description;
        $data['keywords'] = $apartment->meta_keywords;
        $data['apartment'] = $apartment;
        $data['hometelId'] = $hometelId;
        $data['hometel_id'] = $hometelId;
        $data['photos'] = $apartment->photos;
        $data['posts'] = $apartment->posts;
        //$data['posts'] = Post::where(['apartment_id' => $id, 'status' => 1])->get();
        $data['utilites'] = $apartment->utilities()->get();
        return view('frontend.apartment.index', $data);
    }

}
