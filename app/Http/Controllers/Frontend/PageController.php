<?php

namespace App\Http\Controllers\Frontend;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use TCG\Voyager\Models\Page;

use Validator;
use App\Contact;
use App\Slider;

class PageController extends Controller
{
    public function index($slug){
        $page = Page::whereTranslation('slug', '=', $slug)->get()->first();
        if($page){
            $data['page'] = $page;
            $data['sliders'] = json_decode($page->sliders);
            $data['title'] = $page['title'];
            $data['description'] = $page['meta_description'];
            $data['keywords'] = $page->meta_keywords;

            return view('frontend.pages.index', $data);
        }else{
            return redirect('/');
        }

    }
    public function info(){
        $data['title'] = 'hotel';//setting('site.title');
        //$data['description'] = setting('site.description');
        return view('frontend.pages.info', $data);
    }
    public function contact(){
        $data['slider'] = Slider::where('status', 1)->where('trang', 'contact')->first();
        //$data['description'] = setting('site.description');
        return view('frontend.pages.contact', $data);
    }
    public function photo(){
        $data['slider'] = Slider::where('status', 1)->where('trang', 'photo')->first();
        return view('frontend.pages.photo', $data);
    }
    public function saveContact(Request $request){
        $validator = Validator::make($request->all(), [
            'name' => 'required',
            'phone' => 'required',
            'email' => 'required|email',
        ],[
            'required' => ':attribute không được bỏ trống.',
            'email' => ':attribute không hợp lệ.',
        ]);

        if($validator->fails()) {
            return redirect('/lien-he')
                        ->withErrors($validator)
                        ->withInput();
        }else{
            $contact = [
                'name' => $request->input('name'),
                'address' => $request->input('address'),
                'phone' => $request->input('phone'),
                'email' => $request->input('email'),
                'content' => $request->input('content'),
            ];
            Contact::create($contact);
            return redirect('/lien-he')->with('message', "success");
        }
    }
}
