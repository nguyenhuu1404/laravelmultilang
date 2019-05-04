<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;

class Utility extends Model
{
    use Translatable;
    protected $translatable = ['name'];
    function apartments(){
        return $this->belongsToMany('App\Apartment', 'apartment_utilities', 'utility_id', 'apartment_id');
    }
}
