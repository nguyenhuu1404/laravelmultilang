<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Booking extends Model
{
    protected $fillable = ['lastname', 'firstname', 'email', 'phone', 'note', 'room_id', 'apartment_id', 'service_id', 'price_room', 'datein', 'dateout', 'adult', 'children', 'price_service', 'price_extra', 'total', 'status'];
    public function room(){
        return $this->belongsTo('App\Room');
    }
    public function apartment(){
        return $this->belongsTo('App\Aparment');
    }
}
