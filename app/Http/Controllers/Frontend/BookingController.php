<?php

namespace App\Http\Controllers\Frontend;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Mail;

use App\Mail\Booked;

use App\Booking;
use App\Room;
use App\Apartment;
class BookingController extends Controller
{
    function index(){
        $data['title'] = 'hotel';//setting('site.title');
        return view('frontend.booking.choicedateapartment', $data);
    }
    function index2(){
        $data['title'] = 'hotel';//setting('site.title');
        if(session('choiceDate')){
            //chon phong
            $choiceDate = session('choiceDate');
            $data['choiceDate'] = $choiceDate;
            $booked = $this->getRoomBooked($choiceDate['datein'], $choiceDate['dateout']);
            $data['rooms'] = Room::where('status', 1)->whereNotIn('id', $booked['roomIds'])->whereNotIn('apartment_id', $booked['apartmentIds'])->get();
            return view('frontend.booking.choiceroom', $data);
        } else if(session('choiceRoom')) {
            $choiceRoom = session('choiceRoom');
            $data['choiceRoom'] = $choiceRoom;
            return view('frontend.booking.pay', $data);
        } else{
            //chon ngay
            return view('frontend.booking.choicedate', $data);
        }

    }
    function booking(Request $request){
        $choiceRoom = $request->all();
        $datein = $choiceRoom['datein'];
        $dateout = $choiceRoom['dateout'];
        $day = (strtotime($dateout) - strtotime($datein)) / (60 * 60 * 24);
        $day = ceil($day);
        $room = Room::where('id', $choiceRoom['roomId'])->first();
        $price = ($day * $room->price);
        $total = $price + ($price * 0.07);
        $choiceRoom['total'] = $total;

        $choiceRoom['roomName'] = $room->getTranslatedAttribute('name', session()->get('locale'), 'fallbackLocale');
        $choiceRoom['room_id'] = $room->id;
        return redirect('/booking')->with('choiceRoom', $choiceRoom);
    }
    public function saveRoom(Request $request) {
        $valid = Validator::make($request->all(), [
            'lastname' => 'required',
            'firstname' => 'required',
            'email' => 'required|email',
            'phone' => 'required',
        ]);
        if ($valid->fails()) {
            return redirect()->back()->with('choiceRoom', $request->all())->withErrors($valid)->withInput();
        } else {
            Booking::create([
                'firstname' => $request->input('firstname'),
                'lastname' => $request->input('lastname'),
                'email' => $request->input('email'),
                'phone' => $request->input('phone'),
                'note' => $request->input('note'),
                'room_id' => $request->input('room_id'),
                'datein' => $request->input('datein'),
                'dateout' => $request->input('dateout'),
                'adult' => $request->input('adult'),
                'children' => $request->input('children'),
                'price_room' => $request->input('total'),
                'status' => 1
            ]);
            return redirect('/booking/thanks')->with('choiceRoom', $request->all());
        }
    }
    function thank(){
        if(session('choiceRoom')) {
            $choiceRoom = session('choiceRoom');
            $data['choiceRoom'] = $choiceRoom;
            return view('frontend.booking.thank', $data);
        }else{
            return redirect('/');
        }
    }


    function choiceApartment(Request $request){
        $choiceDate = $request->all();
        return redirect('/booking/apartment')->with('choiceDate', $choiceDate);
    }
    function apartment(Request $request){
        if(session('bookApartment')) {
            $bookApartment = session('bookApartment');
            $data['bookApartment'] = $bookApartment;
            return view('frontend.booking.payapartment', $data);
        }else if(session('choiceDate')){
            $choiceDate = session('choiceDate');
            if($choiceDate['children']){
                $data['apartments'] = Apartment::where('status', 1)->where('adult', '>=', $choiceDate['adult'])->where('children', '>=', $choiceDate['children'])->get();
            }else{
                $data['apartments'] = Apartment::where('status', 1)->where('adult', '>=', $choiceDate['adult'])->get();
            }

            $data['choiceDate'] = $choiceDate;
            return view('frontend.booking.choiceapartment', $data);
        } else {
            return redirect('/booking/apartment');
        }
    }
    function bookApartment(Request $request){

        $bookApartment = $request->all();
        $apartmentId = $bookApartment['apartmentId'];
        $datein = $bookApartment['datein'];
        $dateout = $bookApartment['dateout'];
        $day = (strtotime($dateout) - strtotime($datein)) / (60 * 60 * 24);
        $day = ceil($day);
        $apartment = Apartment::where('id', $apartmentId)->first();
        $total = ($day * $apartment->price);
        $bookApartment['total'] = $total;

        $bookApartment['apartmentName'] = $apartment->getTranslatedAttribute('name', session()->get('locale'), 'fallbackLocale');
        $bookApartment['apartment_id'] = $apartment->id;
        return redirect('/booking/apartment')->with('bookApartment', $bookApartment);

    }
    public function saveApartment(Request $request) {
        $valid = Validator::make($request->all(), [
            'lastname' => 'required',
            'firstname' => 'required',
            'email' => 'required|email',
            'phone' => 'required',
        ]);
        if ($valid->fails()) {
            return redirect()->back()->with('bookApartment', $request->all())->withErrors($valid)->withInput();
        } else {
            $booking = Booking::create([
                'firstname' => $request->input('firstname'),
                'lastname' => $request->input('lastname'),
                'email' => $request->input('email'),
                'phone' => $request->input('phone'),
                'note' => $request->input('note'),
                'apartment_id' => $request->input('apartment_id'),
                'datein' => $request->input('datein'),
                'dateout' => $request->input('dateout'),
                'adult' => $request->input('adult'),
                'children' => $request->input('children'),
                'price_apartment' => $request->input('total'),
                'status' => 1
            ]);
            $emails = setting('site.emails');
            $emails = trim($emails);
            $arrEmails = array_map('trim', explode(',', $emails));
            Mail::to($booking->email)
                ->cc($arrEmails)
                ->send(new Booked($booking));

            return redirect('/booking/apartment/thanks')->with('bookApartment', $request->all());
        }
    }
    function apartmentThank(){
        if(session('bookApartment')) {
            $bookApartment = session('bookApartment');
            $data['bookApartment'] = $bookApartment;
            return view('frontend.booking.thankapartment', $data);
        }else{
            return redirect('/');
        }
    }
    function choiceRoom(Request $request){
        $choiceDate = $request->all();
        return redirect('/booking')->with('choiceDate', $choiceDate);
    }
    function getRoomBooked($datein, $dateout){
        $datein = date('Y-m-d', strtotime($datein));
        $dateout = date('Y-m-d', strtotime($dateout));
        $booked = Booking::where(['status' => 1])
        ->where('dateout', '>=', $datein)->get();
        $dataBooked = [];
        $dataBooked['roomIds'] = [];
        $dataBooked['apartmentIds'] = [];
        if($booked->count() > 0){
            foreach($booked as $book){
                if($book['room_id']){
                    $dataBooked['roomIds'][] = $book['room_id'];
                }else{
                    if($book['apartment_id']){
                        $dataBooked['apartmentIds'][] = $book['apartment_id'];
                    }
                }
            }
        }
        return $dataBooked;
    }
    function checkBookingApartment($apartmentId, $datein){
        $datein = date('Y-m-d', strtotime($datein));
        $booked = Booking::where(['status' => 1, 'apartment_id' => $apartmentId])
        ->where('dateout', '>=', $datein)->get();
        if($booked->count() > 0){
            return true;
        }
        return false;
    }
}
