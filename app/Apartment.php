<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;

class Apartment extends Model
{
    use Translatable;
    protected $translatable = ['name', 'title' ,'content', 'tieuchuan', 'chinhsach', 'slug', 'description'];
    public function hometel(){
        return $this->belongsTo('App\Hometel', 'hometel_id', 'id');
    }
    public function rooms() {
        return $this->hasMany('App\Room', 'apartment_id', 'id');
    }
    public function photos() {
        return $this->hasMany('App\Photo', 'apartment_id', 'id');
    }
    public function booking() {
        return $this->hasOne('App\Booking');
    }
    function utilities(){
        return $this->belongsToMany('App\Utility', 'apartment_utilities', 'apartment_id', 'utility_id');
    }
    function posts(){
        return $this->belongsToMany('TCG\Voyager\Models\Post', 'apartment_posts', 'apartment_id', 'post_id');
    }

}
