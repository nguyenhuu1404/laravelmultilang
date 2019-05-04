@extends('frontend.layouts.master')
@section('content')
<section class="bc mb-5">
    <div class="container">
        <h1 class="text-uppercase fs37 utmavobold text-white">TRANG ĐẶT PHÒNG</h1>
        <div class="text-white">Để tìm hiểu thêm về hệ thống đặt phòng quốc gia phụ trợ bấm vào đây</div>
    </div>
</section>
<section>
    <div class="container">
        <ul class="nav nav-tabs utmavobold fs16 p-2 mb-3" id="booking">
            <li class="nav-item">
                <a class="nav-link disabled pl-0" id="chonngay-tab" data-toggle="tab" href="#chonngay" role="tab" aria-controls="chonngay" aria-selected="true">1. Chọn ngày
                    <i class="fas pl-4 fa-angle-right"></i>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link disabled" id="chonphong-tab" data-toggle="tab" href="#chonphong" role="tab" aria-controls="chonphong" aria-selected="false">2. Chọn phòng
                    <i class="fas pl-4 fa-angle-right"></i>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link active" id="contact-tab" data-toggle="tab" href="#thanhtoan" role="tab" aria-controls="thanhtoan" aria-selected="false">3. Thanh toán
                    <i class="fas pl-4 fa-angle-right"></i>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link disabled" id="xacnhan-tab" data-toggle="tab" href="#xacnhan" role="tab" aria-controls="xacnhan" aria-selected="false">4. Xác nhận</a>
            </li>
        </ul>


        <div class="row">
            <div class="col-12 col-md-4">

                <div class="card mb-4">
                    <div class="card-header do3 ">
                        <h2 class="text-uppercase m-0 fs20 text-center text-white utmavobold">Đặt phòng của bạn</h2>
                    </div>

                    <div class="card-body p-4 bg-xanh text-white">
                        <div class="row mb-2">
                            <div class="col">
                                <p class="mb-2">Ngày nhận phòng</p>
                                <b class="fs18 utmavobold">{{$choiceRoom['datein']}}</b>
                            </div>
                            <div class="col">
                                <p class="mb-2">Ngày trả phòng</p>
                                <b  class="fs18 utmavobold">{{$choiceRoom['dateout']}}</b>
                            </div>
                        </div>
                        <div class="row mb-2">
                            <div class="col-12">
                                <p class="mb-2">Phòng</p>
                                <b class="fs18 utmavobold">{{$choiceRoom['roomName']}}</b>
                            </div>
                        </div>
                        <div class="row mb-4">
                            <div class="col">
                                <p class="mb-2">Người lớn</p>
                                <b class="fs18 utmavobold">{{$choiceRoom['adult']}}</b>
                            </div>
                            <div class="col">
                                <p class="mb-2">Trẻ em</p>
                                <b class="fs18 utmavobold">{{$choiceRoom['children']}}</b>
                            </div>
                        </div>

                        <div id="total">
                            <div class="solid4 mb-3 mt-2"></div>
                            <div class="total mb-1">
                                <b class="utmavobold">TỔNG GIÁ:</b> <b class="utmavobold fs27">{{number_format($choiceRoom['total'], 0, ',', '.')}} vnđ</b>
                            </div>
                            <div>Đã bao gồm thuế (7%)</div>
                        </div>

                    </div>

                </div>

            </div>

            <div class="col-12 col-md-8">
                <div class="tab-content" id="bookingContent">
                    <div class="tab-pane fade show active" id="thanhtoan" role="tabpanel" aria-labelledby="thanhtoan-tab">

                    <form class="mb-3" action="/booking/saveroom" method="post">
                            {{ csrf_field() }}
                            <h2 class="text-uppercase fs24 utmavobold mb-4">Thông tin cá nhân</h2>
                            <div class="row mb-2">
                                <div class="col">
                                    <div class="form-group">
                                        <label for="name">Tên <span class="do">*</span></label>
                                        <input type="text" name="firstname" class="form-control {{ $errors->has('firstname') ? 'is-invalid' : '' }}" id="name" placeholder="name" value="{{ old('firstname') }}" >
                                        <div class="invalid-feedback">{{ $errors->first('firstname') }}</div>
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="form-group">
                                        <label for="lastname">Họ <span class="do">*</span></label>
                                        <input type="text" name="lastname" class="form-control {{ $errors->has('lastname') ? 'is-invalid' : '' }}" id="lastname" placeholder="họ" value="{{ old('lastname') }}">
                                        <div class="invalid-feedback">{{ $errors->first('lastname') }}</div>
                                    </div>
                                </div>
                            </div>
                            <div class="row mb-2">
                                <div class="col">
                                    <div class="form-group">
                                        <label for="email">Email <span class="do">*</span></label>
                                        <input type="text" name="email" class="form-control {{ $errors->has('email') ? 'is-invalid' : '' }}" id="email" placeholder="email" value="{{ old('email') }}">
                                        <div class="invalid-feedback">{{ $errors->first('email') }}</div>
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="form-group">
                                        <label for="phone">Phone <span class="do">*</span></label>
                                        <input type="text" class="form-control {{ $errors->has('phone') ? 'is-invalid' : '' }}" name="phone" id="phone" placeholder="Phone" value="{{ old('phone') }}">
                                        <div class="invalid-feedback">{{ $errors->first('phone') }}</div>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group mb-3">
                                <label for="note">Thông tin thêm </label>
                                <textarea name="note"  rows="3" class="form-control" id="note" placeholder="Content">
                                </textarea>
                            </div>
                            <input type="hidden" name="datein" value="{{date('Y-m-d', strtotime($choiceRoom['datein']))}}" />
                            <input type="hidden" name="dateout" value="{{date('Y-m-d', strtotime($choiceRoom['dateout']))}}" />
                            <input type="hidden" name="adult" value="{{$choiceRoom['adult']}}" />
                            <input type="hidden" name="children" value="{{$choiceRoom['children']}}" />
                            <input type="hidden" name="total" value="{{$choiceRoom['total']}}" />
                            <input type="hidden" name="room_id" value="{{$choiceRoom['room_id']}}" />
                            <input type="hidden" name="roomName" value="{{$choiceRoom['roomName']}}" />
                            <button class="utmavobold border-0 btn do3 text-white text-uppercase">Thanh toán</button>

                        </form>


                    </div>

                </div>
            </div>

        </div>



    </div>
</section>

@endsection
