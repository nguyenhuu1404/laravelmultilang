@extends('frontend.layouts.master')
@section('content')
<section class="bc text-center text-white fs30 utmavobold text-uppercase">
    {{$title}}
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
<section class="mt-4 mb-5">
    <div class="container">
        @if($topNews)
        <div class="row mb-4">
            <div class="col-12 col-md-8">
                @if($topNews[0])
                    <a href="/tin-tuc/{{$topNews[0]->id}}-{{$topNews[1]->slug}}">
                        <img src="{{ Storage::url($topNews[0]->image) }}" alt="" class="w-100">
                    <h3 class="fs22 mt-2 text-black utmavobold">
                    {!!$topNews[0]->getTranslatedAttribute('title', $locale, 'fallbackLocale')!!}
                    </h3>
                    </a>
                    <div class="fs14 hidden mt-2 mb-2 ngay utmavobold">
                        <i class="fas fa-user"></i> {{ $topNews[0]->authorId->first()->name }} &nbsp;&nbsp;
                        <i class="fas fa-calendar-alt"></i> {{ date('d / m / Y', strtotime($topNews[0]->created_at)) }}
                    </div>
                    <div class="fs16">
                        {!!$topNews[0]->getTranslatedAttribute('excerpt', $locale, 'fallbackLocale')!!}
                    </div>
                @endif
            </div>
            <div class="col-12 col-md-4">
                <div class="row">
                    @if($topNews[1])
                    <div class="col-12 mb-3">
                        <a href="/tin-tuc/{{$topNews[1]->id}}-{{$topNews[1]->slug}}">
                            <img src="{{ Storage::url($topNews[1]->image) }}" alt="" class="w-100">

                        <h3 class="fs14 text-black mt-1 utmavobold">
                        {!!$topNews[1]->getTranslatedAttribute('title', $locale, 'fallbackLocale')!!}
                        </h3>
                        </a>
                        <div class="mt-1 hidden mb-1 fs10 ngay utmavobold">
                            <i class="fas fa-user"></i> {{ $topNews[1]->authorId->first()->name }} &nbsp;&nbsp;
                            <i class="fas fa-calendar-alt"></i> {{ date('d / m / Y', strtotime($topNews[1]->created_at)) }}
                        </div>
                        <div class="fs14">
                            {!! Str::limit($topNews[1]->getTranslatedAttribute('excerpt', $locale, 'fallbackLocale'), 200) !!}
                        </div>
                    </div>
                    @endif
                    @if($topNews[2])
                    <div class="col-12 mb-3">
                        <a href="/tin-tuc/{{$topNews[2]->id}}-{{$topNews[2]->slug}}">
                            <img src="{{ Storage::url($topNews[2]->image) }}" alt="" class="w-100">
                            <h3 class="mt-1 text-black fs14 utmavobold">
                            {!!$topNews[2]->getTranslatedAttribute('title', $locale, 'fallbackLocale')!!}
                            </h3>
                        </a>

                        <div class="mt-1 hidden fs10 mb-1 ngay utmavobold">
                            <i class="fas fa-user"></i> {{ $topNews[2]->authorId->first()->name }} &nbsp;&nbsp;
                            <i class="fas fa-calendar-alt"></i> {{ date('d / m / Y', strtotime($topNews[2]->created_at)) }}
                        </div>
                        <div class="fs14">
                            {!! Str::limit($topNews[2]->getTranslatedAttribute('excerpt', $locale, 'fallbackLocale'), 100) !!}
                        </div>
                    </div>
                    @endif
                </div>
            </div>
        </div>
        @endif
        @if(count($news) > 0)
        <div class="row">
            @foreach($news as $new)
            <div class="col-12 col-md-4 mb-4">
                <a href="/tin-tuc/{{$new->id}}-{{$new->slug}}">
                    <img src="{{ Storage::url($new->image) }}" alt="" class="w-100">
                    <h4 class="fs16 mt-2 utmavobold text-black">
                    {!!$new->getTranslatedAttribute('title', $locale, 'fallbackLocale')!!}
                    </h4>
                </a>
                <div class="fs10 hidden mt-2 mb-2 ngay utmavobold">
                    <i class="fas fa-user"></i> {{ $new->authorId->first()->name }} &nbsp;&nbsp;
                    <i class="fas fa-calendar-alt"></i> {{ date('d / m / Y', strtotime($new->created_at)) }}
                </div>
                <div>
                {!!Str::limit($new->getTranslatedAttribute('excerpt', $locale, 'fallbackLocale'), 200)  !!}
                </div>

            </div>
            @endforeach

        </div>
        {{ $news->links() }}
        @endif
    </div>
</section>

@endsection
