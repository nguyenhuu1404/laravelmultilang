@extends('frontend.layouts.master')
@section('content')
@if($apartment->slider)
    <section>
        <img src="{{ Storage::url($apartment->slider) }}" class="d-block w-100" alt="{!!$apartment->getTranslatedAttribute('name', $locale, 'fallbackLocale')!!}">
    </section>
@endif
<section>
    <div class="container">
        <div class="row">
            <div class="col-12 col-md-8">
                <h1 class="text-uppercase mt-4 mb-3 pb-3 fs30 utmavobold xanh2 title">
                    {!!$apartment->getTranslatedAttribute('name', $locale, 'fallbackLocale')!!}
                </h1>
                @if($apartment->tieuchuan)
                <div class="fs20 text-uppercase mb-4 xanh2">@lang('home.standard')</div>
                <div class="d-flex flex-row bd-highlight mb-5">
                    {!!$apartment->getTranslatedAttribute('tieuchuan', $locale, 'fallbackLocale')!!}
                </div>
                @endif

                @if($apartment->content)
                <h2 class="fs20 title utmavobold mb-3 pb-3">@lang('home.description')</h2>
                <div class="mota mb-4">
                    {!!$apartment->getTranslatedAttribute('content', $locale, 'fallbackLocale')!!}
                </div>
                @endif

                @if(count($utilites) > 0 )
                <h2 class="fs16 title mb-3 utmavobold cl-icon pb-3">@lang('home.convenient')</h2>
                    <div class="row mb-3">
                        @foreach($utilites as $utility)
                            <div class="col-4 mb-3">
                                @if($utility->icon)
                                <i class="{{$utility->icon}}"></i>
                                @endif
                                {!!$utility->getTranslatedAttribute('name', $locale, 'fallbackLocale')!!}
                            </div>
                        @endforeach
                    </div>
                @endif

                @if($apartment->chinhsach)
                <h2 class="utmavobold fs20 cl-icon title mb-3 pb-3">@lang('home.policy')</h2>
                <div class="chinhsach title mb-5 pb-3">
                    {!!$apartment->getTranslatedAttribute('chinhsach', $locale, 'fallbackLocale')!!}
                </div>
                @endif
            </div>
            <div class="col-12 col-md-4">

                <div class="card mt-4 mb-5">
                    <div class="card-header p-3 bg-xanh text-white">
                        <div class="text-center text-uppercase fs25 utmavobold">
                            {!!$apartment->getTranslatedAttribute('name', $locale, 'fallbackLocale')!!}
                        </div>
                        <div class="text-center fs20">@lang('home.pricefrom') <b class="fs25 utmavobold">{{number_format($apartment->price, 0, ',', '.')}} vnd</b>/@lang('home.night')</div>
                    </div>
                    <div class="card-body">
                        <h5 class="card-title text-center fs20 utmavobold mb-4">@lang('home.yourroom')</h5>

                        <form id='choicedate' action="/booking/apartment" method="post">
                            {{ csrf_field() }}
                            <div class="form-group">
                                <label class="fs15 cl-icon text-uppercase utmavobold" for="ngaydat">@lang('home.checkin')</label>
                                <input id="from" type="text" name="datein" class="form-control" id="ngaydat" placeholder="@lang('home.checkin')">
                            </div>
                            <div class="form-group">
                                <label class="fs15 cl-icon text-uppercase utmavobold" for="ngaytra">@lang('home.checkout')</label>
                                <input id="to" type="text" class="form-control" name="dateout" placeholder="@lang('home.checkout')">
                            </div>
                            <div class="row mb-4">
                                <div class="col">
                                    <label class="cl-icon text-uppercase" for="adult">@lang('home.adult')</label>
                                    <input type="number" id="adult" class="form-control" placeholder="@lang('home.adult')" name="adult" min="1" max="{{ $apartment->adult }}">
                                </div>
                                <div class="col">
                                    <label class="cl-icon text-uppercase" for="children">@lang('home.children')</label>
                                    <input type="number" class="form-control" placeholder="@lang('home.children')" id="children" name="children" min="1" max="{{ $apartment->children }}">
                                </div>
                            </div>
                            <input type="hidden" name="apartmentId" value="{{$apartment->id}}"/>
                            <button type="submit" class="form-control mb-3 text-uppercase fs18 utmavobold text-white border-0 dat">@lang('home.booking')</button>
                        </form>

                    </div>

                </div>

                @if($photos)
                <h2 class="fs16 mb-3 cl-icon utmavobold">@lang('home.photo')</h2>
                <div class="row pr-3 mb-4">
                    @foreach($photos as $photo)
                    <div class="col-6 pr-0">
                        <a href="{{ Storage::url($photo['image']) }}" data-fancybox="gallery" class="group">
                            <img class="w-100" src="{{ Storage::url($photo['image']) }}" alt="">
                        </a>
                        <p class="fs16">{!!$photo->getTranslatedAttribute('name', $locale, 'fallbackLocale')!!}</p>
                    </div>
                    @endforeach

                </div>
                @endif

                @if(count($posts) > 0)

                <h2 class="fs30 xanh2 text-uppercase mb-4 utmavobold">@lang('home.relatednews')</h2>
                @foreach($posts as $new)
                <div class="row mb-3">
                    <div class="col-6">
                        <a href="/tin-tuc/{{$new['id']}}-{{$new['slug']}}"><img src="{{ Storage::url($new['image']) }}" alt="" class="w-100"></a>
                    </div>
                    <div class="col-6 pl-0">
                        <h4 class="fs14 font-weight-bold ">
                        {!!$new->getTranslatedAttribute('title', $locale, 'fallbackLocale')!!}
                        </h4>

                        <div class="fs14">
                            {!! Str::limit($new->getTranslatedAttribute('excerpt', $locale, 'fallbackLocale'), 50) !!}
                        </div>
                    </div>
                </div>
                @endforeach
                @endif

            </div>
        </div>
    </div>

    @if(count($otherApartments) > 0)
    <h2 class="text-uppercase text-center fs30 xanh2 mb-4 utmavobold">@lang('home.relatedapartment')</h2>
    <div class="card-columns mb-5">
        @foreach($otherApartments as $item)
        <div class="card border-0">
            <a href="/apartment/{{$hometel_id}}-{{$item['id']}}-{{$item['slug']}}">
            <img src="{{ Storage::url($item->image) }}" class="card-img-top" alt="...">
            </a>
            <div class="card-body">
                <a href="/apartment/{{$hometel_id}}-{{$item['id']}}-{{$item['slug']}}">
                    <h4 class="card-title xanh2 fs21 utmavobold text-center text-uppercase">
                        {!!$item->getTranslatedAttribute('name', $locale, 'fallbackLocale')!!}
                    </h4>
                </a>
                <div class="gach"></div>
                <div class="card-text text-center">
                    {!!$item->getTranslatedAttribute('title', $locale, 'fallbackLocale')!!}
                </div>
                <div class="card-text do2 utmavobold text-center">
                    {{number_format($item->price, 0, ',', '.')}}
                </div>
            </div>
        </div>
        @endforeach
    </div>
    @endif
</section>
@endsection
