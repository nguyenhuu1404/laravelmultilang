@extends('frontend.layouts.master')
@section('content')
<section class="bc text-center text-white fs30 utmavobold text-uppercase">
    @lang('home.search')
</section>

<section>
    <div class="container">

        <div class="row pr-3 mt-4 mb-5">
            @if(count($apartments) > 0)
            @foreach($apartments as $apartment)
            <div class="col-6 mb-3 pr-0">
                <a href="/apartment/{{$apartment['hometel_id']}}-{{$apartment['id']}}-{{$apartment['slug']}}">
                <img class="w-100 mb-3" src="{{ Storage::url($apartment['image']) }}" alt="">
                </a>
                <a href="/apartment/1-1-h">
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
            @else
            <div class="alert w-100 alert-danger">@lang('home.noresult')</div>
            @endif

        </div>

    </div>


</section>
@endsection

