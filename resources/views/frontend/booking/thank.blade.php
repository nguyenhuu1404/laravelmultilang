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
                <a class="nav-link disabled" id="contact-tab" data-toggle="tab" href="#thanhtoan" role="tab" aria-controls="thanhtoan" aria-selected="false">3. Thanh toán
                    <i class="fas pl-4 fa-angle-right"></i>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link active" id="xacnhan-tab" data-toggle="tab" href="#xacnhan" role="tab" aria-controls="xacnhan" aria-selected="false">4. Xác nhận</a>
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

                    <div class="tab-pane fade show active" id="xacnhan" role="tabpanel" aria-labelledby="xacnhan-tab">
                        <h2 class="text-uppercase fs24 utmavobold mb-4">ĐẶT PHÒNG ĐÃ HOÀN TẤT </h2>
                        <div class="mb-4">
                        Chúng tôi cần thời gian để xác nhận yêu cầu của bạn (tối đa là 3h) sau đó chúng tôi sẽ
                        gửi thông tin phòng vào email của bạn trong thời gian trên nếu bạn có bất kỳ
                        câu hỏi nào vui lòng liên hệ trục tiếp với chúng tôi.
                        </div>
                        <div class="solid mb-2"></div>
                        <div class="row">
                            <div class="col-4">
                                <div class="d-flex align-items-center flex-row">
                                    <div class="p-2">
                                        <img src="/images/p.png" alt="">
                                    </div>
                                    <div class="p-2">
                                        Telephone<br>
                                        +101534434331
                                    </div>
                                </div>
                            </div>

                            <div class="col-4">
                                <div class="d-flex align-items-center flex-row">
                                    <div class="p-2">
                                        <img src="/images/em.png" alt="">
                                    </div>
                                    <div class="p-2">
                                        Email<br>
                                        nationhotel@example.com
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>



    </div>
</section>

@endsection
