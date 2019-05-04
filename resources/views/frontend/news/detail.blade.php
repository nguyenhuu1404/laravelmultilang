@extends('frontend.layouts.master')
@section('content')
<section class="bc text-center text-white fs30 utmavobold text-uppercase">
    <a href="/tin-tuc" class="text-white">@lang('home.news')</a>
</section>
@if($slider)
<style>
.bc {
    background: url("{{ Storage::url($slider->image) }}") no-repeat !important;
    background-size: cover;
    padding: 70px 0px;
}
</style>
@endif
<section>
    <div class="container">
        <h1 class="fs27 mt-4 text-uppercase">{!!$post->getTranslatedAttribute('title', $locale, 'fallbackLocale')!!}</h1>
        <div class="fs14 hidden mt-2 mb-3 ngay utmavobold">
            <i class="fas fa-user"></i> {{ $post->authorId->first()->name }} &nbsp;&nbsp;
            <i class="fas fa-calendar-alt"></i> {{ date('d / m / Y', strtotime($post->created_at)) }}
        </div>
        <div class="fs16 about cl-new mb-4">
            {!!$post->getTranslatedAttribute('body', $locale, 'fallbackLocale')!!}

        </div>
        @if($related)
        <h2 class="cl-new text-center text-uppercase fs24 utmavobold mb-4 mt-5">@lang('home.relatepost')</h2>
        <div class="row">
            @foreach($related as $item)
            <div class="col-12 col-md-4 mb-4">
                <a href="/tin-tuc/{{$item->id}}-{{$item->slug}}">
                    <img src="{{ Storage::url($item->image) }}" alt="" class="w-100">
                    <h4 class="fs16 mt-2 utmavobold text-black">
                        {!!$item->getTranslatedAttribute('title', $locale, 'fallbackLocale')!!}
                    </h4>
                </a>
                <div class="fs10 hidden mt-2 mb-2 ngay utmavobold">
                    <i class="fas fa-user"></i> {{ $item->authorId->first()->name }} &nbsp;&nbsp;
                    <i class="fas fa-calendar-alt"></i> {{ date('d / m / Y', strtotime($item->created_at)) }}
                </div>
                <div>
                    {!!$item->getTranslatedAttribute('excerpt', $locale, 'fallbackLocale')!!}
                </div>

            </div>
            @endforeach
        </div>
        @endif
    </div>
</section>
@endsection
