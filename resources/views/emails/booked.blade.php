<h2>@lang('home.yourroom')</h2>
<div><b>@lang('home.fullname'):</b> {{$booking->lastname}} {{$booking->firstname}}</div>
<div><b>@lang('home.checkin'):</b> {{$booking->datein}}</div>
<div><b>@lang('home.checkout'):</b> {{$booking->dateout}}</div>
<div><b>@lang('home.apm'):</b> {{$apartment->name}}</div>
<div><b>@lang('home.adult'):</b> {{$booking->adult}}</div>
<div><b>@lang('home.children'):</b> {{$booking->children}}</div>
<div><b>@lang('home.note'):</b> {{$booking->note}}</div>

