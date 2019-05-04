@extends('frontend.layouts.master')
@section('content')
<section class="bc text-center text-white fs30 utmavobold text-uppercase">
    Chi tiết căn hộ
</section>

<section class="container mb-4">
    <div class="row mt-4">
        <div class="col-12 col-md-6">
            @if($images)
                <div class="fotorama" data-nav="thumbs">
                @foreach($images as $img)
                    <img class="w-100" src="{{Storage::url($img)}}" alt="">
                @endforeach
                </div>
            @endif
        </div>
        <div class="col-12 col-md-6">
            <h1 class="fs20 utmavobold text-uppercase">{!!$room->getTranslatedAttribute('name', $locale, 'fallbackLocale')!!}  ({!!$room->apartment->getTranslatedAttribute('name', $locale, 'fallbackLocale')!!})</h1>
            <div class="gia utmavobold fs18 mb-3">{{number_format($room->price, 0, ',', '.')}}/vnd</div>
            <div class="solid mb-2"></div>
            <div class="utmavobold mb-3">
                {!!$room->getTranslatedAttribute('title', $locale, 'fallbackLocale')!!}
            </div>
            <div class="solid mb-3"></div>
            <div class="cl-icon mb-3">
                {!!$room->getTranslatedAttribute('excerpt', $locale, 'fallbackLocale')!!}
            </div>

            <form id="choicedate" action="/booking/booking" method="post">
                {{ csrf_field() }}
                <div class="row mb-3">
                    <div class="col">
                        <div class="input-group">
                            <div class="input-group-prepend">
                                <div class="input-group-text"><i class="fas fa-calendar-alt"></i></div>
                            </div>
                            <input id="from" name="datein" type="text" class="form-control" placeholder="check - in date">
                        </div>
                    </div>
                    <div class="col">
                        <div class="input-group">
                            <div class="input-group-prepend">
                                <div class="input-group-text"><i class="fas fa-calendar-alt"></i></div>
                            </div>
                            <input id="to" name="dateout" type="text" class="form-control" placeholder="check - out date">
                        </div>
                    </div>
                </div>

                <div class="row mb-3">
                    <div class="col">
                        <input type="text" id="adult" name="adult" class="form-control" placeholder="Người lớn">
                    </div>
                    <div class="col">
                        <input id="children" type="text" name="children" class="form-control" placeholder="Trẻ con">
                    </div>
                </div>
                <input type="hidden" name="roomId" value="{{$room->id}}" />
                <button type="submit" class=" pt-2 pb-2 pl-4 pr-4 mb-3 text-uppercase fs16 utmavobold text-white border-0 dat">Đăng ký</button>
            </form>


        </div>
    </div>
</section>

<section class="container">
    <ul class="nav nav-tabs" id="myTab" role="tablist">
        <li class="nav-item">
            <a class="nav-link utmavobold cl-icon active" id="description" data-toggle="tab" href="#description" role="tab" aria-controls="home" aria-selected="true">DESCRIPTION</a>
        </li>
        <li class="nav-item">
            <a class="nav-link utmavobold cl-icon" id="policies" data-toggle="tab" href="#policies" role="tab" aria-controls="profile" aria-selected="false">POLICIES</a>
        </li>
        <li class="nav-item">
            <a class="nav-link utmavobold cl-icon" id="availability" data-toggle="tab" href="#availability" role="tab" aria-controls="contact" aria-selected="false">AVAILABILITY</a>
        </li>
    </ul>
    <div class="tab-content pt-3 pb-2 cl-icon" id="myTabContent">
        <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="description">
            {!!$room->getTranslatedAttribute('description', $locale, 'fallbackLocale')!!}
        </div>
        <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="policies">
            {!!$room->getTranslatedAttribute('policy', $locale, 'fallbackLocale')!!}
        </div>
        <div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="availability">
            {!!$room->getTranslatedAttribute('available', $locale, 'fallbackLocale')!!}
        </div>
    </div>
</section>

@if(count($otherApartments) > 0)
<section class="pb-5">
    <h2 class="xanh2 utmavobold fs30 p-4 text-uppercase text-center">CĂN HỘ Liên quan</h2>
    <div class="card-columns mb-5">
        @foreach($otherApartments as $apartment)
        <div class="card border-0">
            <a href="/apartment/{{$hometel->id}}-{{$apartment->id}}-{{$apartment->slug}}">
            <img src="{{ Storage::url($apartment['image']) }}" class="card-img-top" alt="...">
            </a>
            <div class="card-body">
                <a href="/apartment/{{$hometel->id}}-{{$apartment->id}}-{{$apartment->slug}}">
                    <h4 class="card-title xanh2 fs21 utmavobold text-center text-uppercase">
                    {!!$apartment->getTranslatedAttribute('name', $locale, 'fallbackLocale')!!}
                    </h4>
                </a>
                <div class="gach"></div>
                <div class="card-text text-center">
                    {!!$apartment->getTranslatedAttribute('title', $locale, 'fallbackLocale')!!}
                </div>
            </div>
        </div>
        @endforeach
    </div>
</section>
@endif
@endsection
@section('styles')
<link href="{{ asset('/css/fotorama.css')}}" rel="stylesheet"/>
@stop
@push('scripts')
<script src="{{ asset('/js/fotorama.js')}}"></script>
@endpush

