@extends('frontend.layouts.master')
@section('content')
<section class="bc text-center text-white fs30 utmavobold text-uppercase">
    {{$hometel->getTranslatedAttribute('name', $locale, 'fallbackLocale')}}
</section>
@if($hometel->banner)
<style>
.bc {
    background: url("{{ Storage::url($hometel->banner) }}") no-repeat !important;
    background-size: cover;
    padding: 70px 0px;
}
</style>
@endif
<section>
    <div class="container">
        <h1 class="utmavobold fs46 xanh2 mb-0 mt-4">{{$hometel->getTranslatedAttribute('name', $locale, 'fallbackLocale')}}</h1>
        <div class="fs41 mb-4">{{$hometel->getTranslatedAttribute('title', $locale, 'fallbackLocale')}}</div>
        <div class="row mb-3">
            <div class="col-12 col-md-7">
                <div class="hometel">
                    {!!$hometel->getTranslatedAttribute('content', $locale, 'fallbackLocale')!!}
                </div>
            </div>
            <div class="col-12 col-md-5">
            {!!$hometel->map!!}

            </div>
        </div>

        @if(count($services) > 0)

        <div class="row">
            @foreach($services as $service)
            <div class="col-3 mb-3">
                <a href="{{ Storage::url($service['image']) }}" data-fancybox="gallery" class="group">
                <img class="w-100 mb-3" src="{{ Storage::url($service['image']) }}" alt="{{$service->getTranslatedAttribute('name', $locale, 'fallbackLocale')}}">
                </a>
                <h4 class="card-title xanh2 fs16 utmavobold text-center text-uppercase">
                    {{$service->getTranslatedAttribute('name', $locale, 'fallbackLocale')}}
                </h4>
            </div>
            @endforeach
        </div>
        @endif

        <h2 class="text-uppercase utmavobold mt-3 mb-4 fs30 xanh2 text-center">@lang('home.apartment')</h2>

        <div class="row pr-3 mb-5">
            @if($apartments)
            @foreach($apartments as $apartment)
            <div class="col-6 mb-3 pr-0">
                <a href="/apartment/{{$apartment['hometel_id']}}-{{$apartment['id']}}-{{$apartment['slug']}}">
                <img class="w-100 mb-3" src="{{ Storage::url($apartment['image']) }}" alt="">
                </a>
                <a href="/apartment/{{$apartment['hometel_id']}}-{{$apartment['id']}}-{{$apartment['slug']}}">
                    <h4 class="card-title xanh2 fs23 utmavobold text-center text-uppercase">
                        {{$apartment->getTranslatedAttribute('name', $locale, 'fallbackLocale')}}
                    </h4>
                </a>
                <div class="gach"></div>
                <div class="text-center fs20">
                    {!!$apartment->getTranslatedAttribute('title', $locale, 'fallbackLocale')!!}
                </div>
                <div class="do2 fs22 text-center utmavobold">{{number_format($apartment->price, 0, ',', '.')}}</div>
            </div>
            @endforeach
            @endif
            @if($rooms)
            @foreach($rooms as $room)
            <div class="col-6 mb-3 pr-0">
                <a href="/room/{{$room['apartment_id']}}-{{$room['id']}}-{{$room['slug']}}">
                <img class="w-100 mb-3" src="{{ Storage::url($room['image']) }}" alt="">
                </a>
                <a href="/room/{{$room['apartment_id']}}-{{$room['id']}}-{{$room['slug']}}">
                    <h4 class="card-title xanh2 fs23 utmavobold text-center text-uppercase">
                        {{$room->getTranslatedAttribute('name', $locale, 'fallbackLocale')}}({{$room->getTranslatedAttribute('apartmentName', $locale, 'fallbackLocale')}})
                    </h4>
                </a>
                <div class="gach"></div>
                <div class="text-center fs20">
                    {!!$room->getTranslatedAttribute('title', $locale, 'fallbackLocale')!!}
                </div>
                <div class="do2 fs22 text-center utmavobold">{{number_format($room->price, 0, ',', '.')}}</div>
            </div>
            @endforeach
            @endif
        </div>

    </div>


</section>
@endsection

