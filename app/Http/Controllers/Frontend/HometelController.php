<?php

namespace App\Http\Controllers\Frontend;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Storage;
use App\Hometel;
use App\Apartment;
use App\Room;

class HometelController extends Controller
{
    public function index($id){

        $hometel = Hometel::where('id', $id)->get()->first();
        $data['title'] = $hometel['name'];
        $data['description'] = $hometel['description'];
        $data['keywords'] = $hometel->meta_keywords;
        $data['hometel'] = $hometel;
        $data['services'] = $hometel->photos;
        $apartments = Apartment::where(['status' => 1, 'hometel_id' => $id])->get();
        $data['apartments'] = $apartments;
        $apartmentIds = [];
        foreach($apartments as $apartment){
            $apartmentIds[] = $apartment['id'];
        }
        $rooms = Room::where('status', 1)->whereIn('apartment_id', $apartmentIds)->get();
        $dataRooms = [];
        foreach($rooms as $room){
            $obRoom = Room::find($room['id']);
            $apartmentName = $obRoom->apartment->name;
            $room['apartmentName'] = $apartmentName;
            $dataRooms[] = $room;
        }
        $data['rooms'] = $dataRooms;
        return view('frontend.hometel.index', $data);
    }
}
