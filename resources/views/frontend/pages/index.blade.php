@extends('frontend.layouts.master')
@section('content')
<section>
@if($sliders)
    <div id="slider" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
            @foreach ($sliders as $key => $slider)
            <li data-target="#slider" data-slide-to="{{$key}}" class="{{ $key == 0 ? 'active' : ''}}"></li>
            @endforeach
        </ol>
        <div class="carousel-inner">
            @foreach ($sliders as $key => $slider)
                <div class="carousel-item {{ $key == 0 ? 'active' : ''}}">
                    <img src="{{ Storage::url($slider) }}" class="d-block w-100" alt="...">
                </div>
            @endforeach
        </div>
    </div>
@endif
</section>
<section class="container">
    <h1 class="utmavobold fs30 mt-4 text-uppercase">{{$page->getTranslatedAttribute('title', $locale, 'fallbackLocale')}}</h1>
    <div class="about mb-5">
        {!!$page->getTranslatedAttribute('body', $locale, 'fallbackLocale')!!}
    </div>
</section>
@endsection
