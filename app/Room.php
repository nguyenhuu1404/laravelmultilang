<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;

class Room extends Model
{
    use Translatable;
    protected $table = 'rooms';
    protected $translatable = ['name', 'title', 'excerpt', 'description', 'slug', 'policy', 'available', 'meta_description'];
    public function apartment(){
        return $this->belongsTo('App\Apartment', 'apartment_id', 'id');
    }
    public function booking() {
        return $this->hasOne('App\Booking');
    }
}
