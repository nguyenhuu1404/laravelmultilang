@extends('frontend.layouts.master')
@section('content')
<section class="bc text-center text-white fs30 utmavobold text-uppercase">
    @lang('home.news')
</section>
@if($slider)
<style>
.bc {
    background: url("{{ Storage::url($slider->image) }}") no-repeat !important;
    background-size: cover;
}
</style>
@endif
<section class="mt-4 mb-5">
    <div class="container">

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

                <div>
                {!! Str::limit($new->getTranslatedAttribute('excerpt', $locale, 'fallbackLocale'), 100) !!}
                </div>

            </div>
            @endforeach

        </div>
        {{ $news->links() }}
        @endif
    </div>
</section>

@endsection
