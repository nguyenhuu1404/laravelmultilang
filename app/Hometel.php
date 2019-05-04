<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;

class Hometel extends Model
{
    use Translatable;
    protected $translatable = ['name', 'title', 'content', 'slug', 'description'];
    public function apartments() {
        return $this->hasMany('App\Apartment', 'hometel_id', 'id');
    }
}
