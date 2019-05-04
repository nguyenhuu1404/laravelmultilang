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
                    <a class="nav-link active pl-0" id="chonngay-tab" data-toggle="tab" href="#chonngay" role="tab" aria-controls="chonngay" aria-selected="true">1. @lang('home.choosedate')
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
                    <a class="nav-link disabled" id="xacnhan-tab" data-toggle="tab" href="#xacnhan" role="tab" aria-controls="xacnhan" aria-selected="false">4. @lang('home.confirm')</a>
                </li>
            </ul>


            <div class="row">
                <div class="col-12 col-md-4">

                    <div class="card mb-4">
                        <div class="card-header do3 ">
                            <h2 class="text-uppercase m-0 fs20 text-center text-white utmavobold">@lang('home.yourroom')</h2>
                        </div>
                        <form id="choicedate" action="/booking/choiceapartment" method="post">
                            {{ csrf_field() }}
                            <div class="card-body p-4 bg-xanh text-white">
                                <div class="row mb-2">
                                    <div class="col">
                                        <p class="mb-2">@lang('home.checkin')</p>
                                        <input name="datein" id="from" type="text" class="form-control h30" value="{{old('datein')}}" require>
                                    </div>
                                    <div class="col">
                                        <p class="mb-2">@lang('home.checkout')</p>
                                        <input value="{{old('datein')}}" name="dateout" id="to" type="text" class="form-control h30" require >
                                    </div>
                                </div>
                                <div class="row mb-4">
                                    <div class="col">
                                        <p class="mb-2">@lang('home.adult')</p>
                                        <input value="{{old('adult')}}" id="adult" name="adult" type="text" class="form-control h30" >
                                    </div>
                                    <div class="col">
                                        <p class="mb-2">@lang('home.children')</p>
                                        <input value="{{old('children')}}" name="children" type="text" class="form-control h30" >
                                    </div>
                                </div>
                                <button class="dangki mb-3 text-uppercase text-center w-100 rounded">@lang('home.check')</button>
                            </div>
                        </form>


                    </div>




                </div>



            </div>
        </div>

</section>

@endsection
