<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;
class Photo extends Model
{
    use Translatable;
    protected $translatable = ['name'];
    public function apartment(){
        return $this->belongsTo('App\Apartment', 'apartment_id', 'id');
    }
    public function hometel(){
        return $this->belongsTo('App\Hometel', 'hometel_id', 'id');
    }

}
