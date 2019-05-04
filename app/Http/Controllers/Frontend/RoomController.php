<?php

namespace App\Http\Controllers\Frontend;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Room;
use App\Apartment;
use App\Hometel;

class RoomController extends Controller
{
    public function index($apartmentId, $id){
        $room = Room::where('id', $id)->first();
        $data['otherApartments'] = Apartment::where('status', 1)->whereNotIn('id',[$room->apartment_id])->limit(4)->get();
        $data['title'] = $room->name;
        $data['description'] = $room->description;
        $data['room'] = $room;
        $apartment = Apartment::where('id', $id)->first();
        $data['apartmentId'] = $apartmentId;
        $data['hometel'] = Hometel::where('id', $apartment->hometel_id)->first();
        $data['images'] = json_decode($room->images);
        return view('frontend.room.index', $data);
    }
}
