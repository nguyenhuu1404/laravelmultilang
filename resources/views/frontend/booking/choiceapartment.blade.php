@extends('frontend.layouts.master')
@section('content')
<section class="bc mb-5">
    <div class="container">
        <h1 class="text-uppercase fs37 utmavobold text-white">@lang('home.bookingpage')</h1>

    </div>
</section>
<section>
    <div class="container">
        <ul class="nav nav-tabs utmavobold fs16 p-2 mb-3" id="booking">
            <li class="nav-item">
                <a class="nav-link disabled pl-0" id="chonngay-tab" data-toggle="tab" href="#chonngay" role="tab" aria-controls="chonngay" aria-selected="true">1. @lang('home.choosedate')
                    <i class="fas pl-4 fa-angle-right"></i>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link active" id="chonphong-tab" data-toggle="tab" href="#chonphong" role="tab" aria-controls="chonphong" aria-selected="false">2. @lang('home.chooseapartment')
                    <i class="fas pl-4 fa-angle-right"></i>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link disabled" id="contact-tab" data-toggle="tab" href="#thanhtoan" role="tab" aria-controls="thanhtoan" aria-selected="false">3. @lang('home.pay')
                    <i class="fas pl-4 fa-angle-right"></i>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link disabled" id="xacnhan-tab" data-toggle="tab" href="#xacnhan" role="tab" aria-controls="xacnhan" aria-selected="false">4. @lang('home.confirm')</a>
            </li>
        </ul>

        <div class="row">
            <div class="col-12 col-md-4">

                <div class="card mb-4">
                    <div class="card-header do3 ">
                        <h2 class="text-uppercase m-0 fs20 text-center text-white utmavobold">@lang('home.yourroom')</h2>
                    </div>
                    <div id="choicedate2" class="hidden" >
                        <form id="choicedate" action="/booking/choiceapartment" method="post">
                            {{ csrf_field() }}
                            <div class="card-body p-4 bg-xanh text-white">
                                <div class="row mb-2">
                                    <div class="col">
                                        <p class="mb-2">@lang('home.checkin')</p>
                                        <input name="datein" id="from" type="text" class="form-control h30" value="{{$choiceDate['datein']}}" require>
                                    </div>
                                    <div class="col">
                                        <p class="mb-2">@lang('home.checkout')</p>
                                        <input value="{{$choiceDate['dateout']}}" name="dateout" id="to" type="text" class="form-control h30" require >
                                    </div>
                                </div>
                                <div class="row mb-4">
                                    <div class="col">
                                        <p class="mb-2">@lang('home.adult')</p>
                                        <input value="{{$choiceDate['adult']}}" id="adult" name="adult" type="text" class="form-control h30" >
                                    </div>
                                    <div class="col">
                                        <p class="mb-2">@lang('home.children')</p>
                                        <input value="{{$choiceDate['children']}}" name="children" type="text" class="form-control h30" >
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-6">
                                        <button class="btn bg-primary border-none mb-3 text-center text-white utmavobold fs13 lh30 h45 w-100 rounded">@lang('home.change')</button>
                                    </div>
                                    <div class="col-6">
                                        <div onclick="cancelBooking()" class="btn lh30 do3 border-none text-white utmavobold fs14 h45 text-center w-100 rounded">@lang('home.cancel')</div>
                                    </div>
                                </div>

                            </div>

                        </form>
                    </div>

                    <div id="choiceroom" >
                        <div class="card-body p-4 bg-xanh text-white">
                            <div class="row mb-2">
                                <div class="col">
                                    <p class="mb-2">@lang('home.checkin')</p>
                                    <b class="fs18 utmavobold">{{$choiceDate['datein']}}</b>
                                </div>
                                <div class="col">
                                    <p class="mb-2">@lang('home.checkout')</p>
                                    <b  class="fs18 utmavobold">{{$choiceDate['dateout']}}</b>
                                </div>
                            </div>
                            <div class="row mb-4">
                                <div class="col">
                                    <p class="mb-2">@lang('home.adult')</p>
                                    <b class="fs18 utmavobold">{{$choiceDate['adult']}}</b>
                                </div>
                                <div class="col">
                                    <p class="mb-2">@lang('home.children')</p>
                                    <b class="fs18 utmavobold">{{$choiceDate['children']}}</b>
                                </div>
                            </div>

                            <button onclick="editBooking()" class="bg-white btn p-2 fs18 utmavobold mb-3 text-center w-100 border-0">@lang('home.edit')</button>

                        </div>
                    </div>

                </div>

            </div>

            <div class="col-12 col-md-8">
                <div class="tab-content" id="bookingContent">
                    <div class="tab-pane fade show active" id="chonphong" role="tabpanel" aria-labelledby="chonphong-tab">

                    @if(count($apartments) > 0 )
                            @foreach($apartments as $apartment)
                            <form action="/booking/apartment" method="post">
                                {{ csrf_field() }}
                                <div class="row mb-5">
                                    <div class="col-12 col-md-4">
                                        <img class="w-100" src="{{ Storage::url($apartment->image) }}" alt="">
                                    </div>
                                    <div class="col-12 col-md-8">
                                        <h3 class="fs16 mb-3 utmavobold">{!!$apartment->getTranslatedAttribute('name', $locale, 'fallbackLocale')!!}</h3>

                                        <div class="row">
                                            <div class="col-6">
                                                <div class="fs24 utmavobold">{{number_format($apartment->price, 0, ',', '.')}} vnđ/@lang('home.night')</div>
                                            </div>
                                            <div class="col-6">
                                                <button class="utmavobold border-0 btn do3 text-white text-uppercase">@lang('home.chooseroom')</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="solid mb-5"></div>
                                <input type="hidden" name="datein" value="{{$choiceDate['datein']}}" />
                                <input type="hidden" name="dateout" value="{{$choiceDate['dateout']}}" />
                                <input type="hidden" name="adult" value="{{$choiceDate['adult']}}" />
                                <input type="hidden" name="children" value="{{$choiceDate['children']}}" />
                                <input type="hidden" name="apartmentId" value="{{$apartment->id}}" />
                            </form>
                            @endforeach
                        @else
                            <div class="alert alert-danger">Không có căn hộ nào</div>
                        @endif


                    </div>
                </div>
            </div>

        </div>



    </div>
</section>

@endsection
@push('scripts')
<script>
    function editBooking(){
        $('#choiceroom').hide();
        $('#choicedate2').show();
    }
    function cancelBooking(){
        $('#choiceroom').show();
        $('#choicedate2').hide();
    }
</script>
@endpush
