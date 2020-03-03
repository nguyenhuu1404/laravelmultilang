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
Route::get('/link', function() {
    symlink('/home/huu/web/banphongresort.com/app/storage/app/public', '/home/huu/web/banphongresort.com/public_html/storage');
});

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});

Route::group(['as' => 'frontend.', 'namespace' => 'Frontend'], function() {
    Route::get('/', 'HomeController@index')->name('home.index');
    Route::post('/home/setLang', 'HomeController@setLang');
    Route::post('/home/saveemail', 'HomeController@saveEmail');
    Route::get('/search', 'HomeController@search');
    Route::get('/home/{lang}', 'HomeController@lang');
    Route::get('/booking/thanks', 'BookingController@thank');
    Route::post('/booking', 'BookingController@booking');
    Route::get('/danh-muc/{id}-{slug}', 'NewController@category');
    Route::get('/tin-tuc/{id}-{slug}', 'NewController@detail')->where(['id' => '[0-9]+']);
    Route::get('/lien-he', 'PageController@contact');
    Route::post('/lien-he', 'PageController@saveContact');
    Route::get('/{slug}', 'PageController@index');
});

