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
                <a class="nav-link disabled  pl-0" id="chonngay-tab" data-toggle="tab" href="#chonngay" role="tab" aria-controls="chonngay" aria-selected="true">1. @lang('home.choosedate')
                    <i class="fas pl-4 fa-angle-right"></i>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link disabled" id="chonphong-tab" data-toggle="tab" href="#chonphong" role="tab" aria-controls="chonphong" aria-selected="false">2. @lang('home.chooseapartment')
                    <i class="fas pl-4 fa-angle-right"></i>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link disabled" id="contact-tab" data-toggle="tab" href="#thanhtoan" role="tab" aria-controls="thanhtoan" aria-selected="false">3. @lang('home.pay')
                    <i class="fas pl-4 fa-angle-right"></i>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link active" id="xacnhan-tab" data-toggle="tab" href="#xacnhan" role="tab" aria-controls="xacnhan" aria-selected="false">4. @lang('home.confirm')</a>
            </li>
        </ul>


        <div class="row">
            <div class="col-12 col-md-4">

                <div class="card mb-4">
                    <div class="card-header do3 ">
                        <h2 class="text-uppercase m-0 fs20 text-center text-white utmavobold">@lang('home.yourroom')</h2>
                    </div>

                    <div class="card-body p-4 bg-xanh text-white">
                        <div class="row mb-2">
                            <div class="col">
                                <p class="mb-2">@lang('home.checkin')</p>
                                <b class="fs18 utmavobold">{{$bookApartment['datein']}}</b>
                            </div>
                            <div class="col">
                                <p class="mb-2">@lang('home.checkout')</p>
                                <b  class="fs18 utmavobold">{{$bookApartment['dateout']}}</b>
                            </div>
                        </div>
                        <div class="row mb-2">
                            <div class="col-12">
                                <p class="mb-2">@lang('home.apm')</p>
                                <b class="fs18 utmavobold">{{$bookApartment['apartmentName']}}</b>
                            </div>
                        </div>
                        <div class="row mb-4">
                            <div class="col">
                                <p class="mb-2">@lang('home.adult')</p>
                                <b class="fs18 utmavobold">{{$bookApartment['adult']}}</b>
                            </div>
                            <div class="col">
                                <p class="mb-2">@lang('home.children')</p>
                                <b class="fs18 utmavobold">{{$bookApartment['children']}}</b>
                            </div>
                        </div>

                        <div id="total">
                            <div class="solid4 mb-3 mt-2"></div>
                            <div class="total mb-1">
                                <b class="utmavobold">@lang('home.total'):</b> <b class="utmavobold fs27">{{number_format($bookApartment['total'], 0, ',', '.')}} vnđ</b>
                            </div>

                        </div>

                    </div>
                </div>
            </div>

            <div class="col-12 col-md-8">
                <div class="tab-content" id="bookingContent">

                    <div class="tab-pane fade show active" id="xacnhan" role="tabpanel" aria-labelledby="xacnhan-tab">
                        <h2 class="text-uppercase fs24 utmavobold mb-4">@lang('home.bc') </h2>
                        <div class="mb-4">
                            @lang('home.paythanks')
                        </div>

                    </div>
                </div>
            </div>

        </div>



    </div>
</section>

@endsection
