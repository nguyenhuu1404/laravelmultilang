<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});

Route::group(['as' => 'frontend.', 'namespace' => 'Frontend'], function() {
    Route::get('/', 'HomeController@index')->name('home.index');
    Route::post('/home/setLang', 'HomeController@setLang');
    Route::post('/home/saveemail', 'HomeController@saveEmail');
    Route::get('/search', 'HomeController@search');
    Route::get('/home/{lang}', 'HomeController@lang');
    Route::get('/hometel/{id}-{slug}', 'HometelController@index')->where(['id' => '[0-9]+']);
    Route::get('/apartment/{hometel}-{id}-{slug}', 'ApartmentController@index')->where(['id' => '[0-9]+', 'hometel' => '[0-9]+']);
    Route::get('/room/{home}-{id}-{slug}', 'RoomController@index')->where(['id' => '[0-9]+', 'home' => '[0-9]+']);
    Route::get('/booking', 'BookingController@index')->name('booking.index');
    Route::get('/booking/thanks', 'BookingController@thank');
    Route::post('/booking', 'BookingController@booking');
    Route::post('/booking/choiceroom', 'BookingController@choiceRoom');
    Route::post('/booking/booking', 'BookingController@booking');
    Route::post('/booking/saveroom', 'BookingController@saveRoom');

    Route::get('/booking/apartment', 'BookingController@apartment');
    Route::post('/booking/choiceapartment', 'BookingController@choiceApartment');
    Route::get('/booking/apartment/thanks', 'BookingController@apartmentThank');
    Route::post('/booking/apartment', 'BookingController@bookApartment');
    Route::post('/booking/saveapartment', 'BookingController@saveApartment');

    Route::get('/tin-tuc', 'NewController@index');
    Route::get('/danh-muc/{id}-{slug}', 'NewController@category');
    Route::get('/tin-tuc/{id}-{slug}', 'NewController@detail')->where(['id' => '[0-9]+']);
    Route::get('/lien-he', 'PageController@contact');
    Route::post('/lien-he', 'PageController@saveContact');
    Route::get('/hinh-anh', 'PageController@photo');
    Route::get('/{slug}', 'PageController@index');
});

Route::group(['as' => 'api.', 'prefix' => 'api', 'namespace' => 'Frontend'], function() {

});



Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});
