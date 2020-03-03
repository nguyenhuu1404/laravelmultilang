@extends('frontend.layouts.master')
@section('content')
<link rel='stylesheet' href='https://cdn.rawgit.com/daneden/animate.css/v3.1.0/animate.min.css'>
<section >
    <div class="position-relative">

        @if($sliders)
        <div id="slider" data-wow-duration="2s"   class="wow fadeInUp carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                @foreach ($sliders as $key => $slider)
                <li data-target="#slider" data-slide-to="{{$key}}" class="{{ $key == 0 ? 'active' : ''}}"></li>
                @endforeach
            </ol>
            <div class="carousel-inner">
                @foreach ($sliders as $key => $slider)
                    <div class="carousel-item {{ $key == 0 ? 'active' : ''}}">
                        <img src="/images/slider.jpg" class="d-block w-100" alt="...">
                    </div>
                @endforeach
            </div>
        </div>
        @endif
    </div>
</section>
@if($hometels)
<section class="hidden">
    <h2 class="text-uppercase xanh1 utmavobold fs30 text-center p-4 mb-0">@lang('home.hometelsystem')</h2>
    <div class="container">
        <div class="row">
            @foreach($hometels as $hometel)
            <div class="col-12 col-md-4">
                <a href="/hometel/{{$hometel['id']}}-{{$hometel['slug']}}">
                    <img class="w-100" src="{{ Storage::url($hometel['image']) }}" alt="">
                    <h3 class="utmavobold text-center fs18 text-uppercase text-dark p-3 mb-3">{{$hometel->getTranslatedAttribute('name', $locale, 'fallbackLocale')}}</h3>
                </a>

            </div>
            @endforeach
        </div>
    </div>
</section>
@endif
@if($apartments)

<section data-wow-duration="3s" class="bg_highline pb-5 wow fadeInUp ">
    <h2 class="xanh2 utmavobold fs30 p-4 text-uppercase text-center">@lang('home.highlyapartment')</h2>
    <div id="apartment" class="owl-carousel owl-theme">
        @foreach($apartments as $apartment)
        <div class="item">
            <div class="card bg_highline border-0">
                <a href="/apartment/{{$apartment->hometel_id}}-{{$apartment->id}}-{{$apartment->slug}}">
                <img src="{{ Storage::url($apartment->image) }}" class="card-img-top" alt="...">
                </a>
                <div data-wow-duration="3s" class="wow flipInX card-body">
                    <a href="/apartment/{{$apartment->hometel_id}}-{{$apartment->id}}-{{$apartment->slug}}">
                        <h4 class="card-title xanh2 fs21 utmavobold text-center text-uppercase">
                            {!!$apartment->getTranslatedAttribute('name', $locale, 'fallbackLocale')!!}
                        </h4>
                    </a>
                    <div class="gach"></div>
                    {!!$apartment->getTranslatedAttribute('title', $locale, 'fallbackLocale')!!}
                </div>
            </div>
        </div>
        @endforeach
    </div>

</section>
@endif
<section class="p-5 xs-p0">
    <div class="container">
        <div class="row">
            <div data-wow-duration="2s"  class="wow slideInLeft  col-12 col-md-6 pr-4">
                @if($about->images)
                @php
                    $images = json_decode($about->images);
                @endphp
                <div class="fotorama" data-nav="thumbs">
                    @foreach($images as $image)
                        <img class="w-100" src="{{ Storage::url($image) }}" alt="">
                    @endforeach
                </div>
                @endif
            </div>
            <div data-wow-duration="2s" class="wow slideInRight col-12 pl-4 col-md-6">
                <h4 class="fs35 utmavobold xanh2 mb-0">{!!$about->getTranslatedAttribute('name', $locale, 'fallbackLocale')!!}</h4>
                <div class="fs31 mb-4">{!!$about->getTranslatedAttribute('title', $locale, 'fallbackLocale')!!}</div>
                <div class="content-info xam mb-3">
                    {!!$about->getTranslatedAttribute('content', $locale, 'fallbackLocale')!!}
                </div>
                <a href="/gioi-thieu" class="do3 utmavobold btn text-white">@lang('home.readmore')</a>
            </div>
        </div>
    </div>
</section>

@if($services)
<section data-wow-duration="3s" class="p-5 xs-p0 tienich wow fadeInUp ">
    <h2 class="utmavobold mb-4 fs31 xanh2 text-center text-uppercase">@lang('home.service')</h2>
    <div class="container">
        <div id="service" class="owl-carousel owl-theme">
            @foreach($services as $service)
            <a href="/dich-vu-tien-ich">
            <div class="item">
                <img class="d-block w-100" src="{{ Storage::url($service->image) }}" alt="{{$service->name}}">
                <div class="fs16 text-black utmavobold mt-3">
                {!!$service->getTranslatedAttribute('name', $locale, 'fallbackLocale')!!}
                </div>
            </div>
            </a>
            @endforeach
        </div>
    </div>

</section>
@endif
@endsection
@section('styles')
<link href="{{ asset('/css/fotorama.css')}}" rel="stylesheet"/>
<link href="{{ asset('/frontend/owl-carousel2/assets/owl.carousel.min.css')}}" rel="stylesheet"/>

@stop
@push('scripts')
<script src="{{ asset('/frontend/owl-carousel2/owl.carousel.min.js')}}"></script>
<script src="{{ asset('/js/fotorama.js')}}"></script>
<script src='https://cdn.rawgit.com/matthieua/WOW/1.0.1/dist/wow.min.js'></script>

<script>
    $("#service").owlCarousel({
        loop:true,
        margin:20,
        autoplay: true,
        responsiveClass:true,
        responsive:{
            0:{
                items:1,
                nav:true
            },
            600:{
                items:2,
                nav:false
            },
            1000:{
                items:3,
                nav:true,
                loop:false
            }
        },
        navText: ["<img src='{{ asset('/images/left.png')}}'>","<img src='{{ asset('/images/right.png')}}'>"],
        autoplayTimeout:7000,
        autoplayHoverPause:true
    });

    $("#apartment").owlCarousel({
        loop:true,
        margin:5,
        responsiveClass:true,
        autoplay: true,
        responsive:{
            0:{
                items:1,
                nav:true
            },
            600:{
                items:2,
                nav:false
            },
            1000:{
                items:3,
                nav:true,
                loop:false
            }
        },
        autoplayTimeout:6000,
        autoplayHoverPause:true
    });

    new WOW().init();
</script>
@endpush

