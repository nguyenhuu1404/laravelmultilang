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
                    <a class="nav-link active pl-0" id="chonngay-tab" data-toggle="tab" href="#chonngay" role="tab" aria-controls="chonngay" aria-selected="true">1. Chọn ngày
                        <i class="fas pl-4 fa-angle-right"></i>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="chonphong-tab" data-toggle="tab" href="#chonphong" role="tab" aria-controls="chonphong" aria-selected="false">2 Chọn phòng
                        <i class="fas pl-4 fa-angle-right"></i>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="contact-tab" data-toggle="tab" href="#thanhtoan" role="tab" aria-controls="thanhtoan" aria-selected="false">3. Thanh toán
                        <i class="fas pl-4 fa-angle-right"></i>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="xacnhan-tab" data-toggle="tab" href="#xacnhan" role="tab" aria-controls="xacnhan" aria-selected="false">4. Xác nhận</a>
                </li>
            </ul>


            <div class="row">
                <div class="col-12 col-md-4">

                    <div class="card mb-4">
                        <div class="card-header do3 ">
                            <h2 class="text-uppercase m-0 fs20 text-center text-white utmavobold">Đặt phòng của bạn</h2>
                        </div>
                        <form action="/booking/choiceroom" method="post">
                            {{ csrf_field() }}
                            <div id="choicedate" >
                                <div class="card-body p-4 bg-xanh text-white">
                                    <div class="row mb-2">
                                        <div class="col">
                                            <p class="mb-2">Ngày nhận phòng</p>
                                            <input name="datein" id="from" type="text" class="form-control h30" value="{{session()->get('datein')}}" >
                                        </div>
                                        <div class="col">
                                            <p class="mb-2">Ngày trả phòng</p>
                                            <input value="{{session()->get('datein')}}" name="dateout" id="to" type="text" class="form-control h30" >
                                        </div>
                                    </div>
                                    <div class="row mb-4">
                                        <div class="col">
                                            <p class="mb-2">Người lớn</p>
                                            <input value="{{session()->get('adult')}}" name="adult" type="text" class="form-control h30" >
                                        </div>
                                        <div class="col">
                                            <p class="mb-2">Trẻ em</p>
                                            <input value="{{session()->get('children')}}" name="children" type="text" class="form-control h30" >
                                        </div>
                                    </div>
                                    <input type="hidden" name="choicedate" value="1" />
                                    <button class="dangki mb-3 text-uppercase text-center w-100 rounded">Kiểm tra</button>
                                </div>
                            </div>
                        </form>
                        <div id="choiceroom" class="{{session()->get('choicedate') == 1 ? '' : 'hidden'}}">
                        <div class="card-body p-4 bg-xanh text-white">
                                <div class="row mb-2">
                                    <div class="col">
                                        <p class="mb-2">Ngày nhận phòng</p>
                                        <b class="fs18 utmavobold"></b>
                                    </div>
                                    <div class="col">
                                        <p class="mb-2">Ngày trả phòng</p>
                                        <b  class="fs18 utmavobold">03/08/2019</b>
                                    </div>
                                </div>
                                <div class="row mb-4">
                                    <div class="col">
                                        <p class="mb-2">Người lớn</p>
                                        <b class="fs18 utmavobold">1</b>
                                    </div>
                                    <div class="col">
                                        <p class="mb-2">Trẻ em</p>
                                        <b class="fs18 utmavobold">1</b>
                                    </div>
                                </div>

                                <button class="bg-white hidden btn p-2 fs18 utmavobold mb-3 text-center w-100 border-0">Chỉnh sử đặt chỗ </button>

                                <div class="hidden" id="total">
                                    <div class="solid4 mb-3 mt-2"></div>
                                    <div class="total mb-1">
                                        <b class="utmavobold">TỔNG GIÁ:</b> <b class="utmavobold fs27">2.000.000 vnđ</b>
                                    </div>
                                    <div>Đã bao gồm thuế (7%)</div>
                                </div>


                            </div>
                        </div>

                    </div>




                </div>

                <div class="col-12 col-md-8">
                    <div class="tab-content" id="bookingContent">
                        <div class="tab-pane fade show active" id="chonngay" role="tabpanel" aria-labelledby="chonngay-tab">

                        </div>
                        <div class="tab-pane fade" id="chonphong" role="tabpanel" aria-labelledby="chonphong-tab">
                            <h2 class="text-uppercase mb-4 fs24 utmavobold xanh2">PHÒNG CÒN TRỐNG VÀO NGÀY QUY ĐỊNH</h2>
                            <div class="row mb-5">
                                <div class="col-12 col-md-4">
                                    <img class="w-100" src="/images/book.jpg" alt="">
                                </div>
                                <div class="col-12 col-md-8">
                                    <h3 class="fs16 mb-3 utmavobold">Phòng gia đình rộng rãi</h3>
                                    <div class="text-room mb-3">
                                    Phòng gia đình rộng rãi Morbi tại mi trong risus venenatis suscipit sed ut ipsum. Nullam massa eros, euismod vestibulum ligula quis, volutpat feugiat lorem. Morbi trong quam varius, euismod
                                    </div>
                                    <div class="row">
                                        <div class="col-6">
                                            <div class="fs24 utmavobold">650000 vnđ/đêm</div>
                                        </div>
                                        <div class="col-6">
                                            <button class="utmavobold border-0 btn do3 text-white text-uppercase">CHỌN PHÒNG</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="solid mb-5"></div>
                        </div>
                        <div class="tab-pane fade" id="thanhtoan" role="tabpanel" aria-labelledby="thanhtoan-tab">
                            <form action="" method="post">
                                {{ csrf_field() }}
                                <h2 class="text-uppercase fs24 utmavobold mb-4">Thông tin cá nhân</h2>
                                <div class="row mb-2">
                                    <div class="col">
                                        <div class="form-group">
                                            <label for="name">Tên <span class="do">*</span></label>
                                            <input name="firstname" type="text" class="form-control" id="name" placeholder="name">
                                        </div>
                                    </div>
                                    <div class="col">
                                        <div class="form-group">
                                            <label for="name">Họ <span class="do">*</span></label>
                                            <input name="lastname" type="text" class="form-control" id="name" placeholder="họ">
                                        </div>
                                    </div>
                                </div>
                                <div class="row mb-2">
                                    <div class="col">
                                        <div class="form-group">
                                            <label for="name">Email <span class="do">*</span></label>
                                            <input type="text" class="form-control" id="name" placeholder="name">
                                        </div>
                                    </div>
                                    <div class="col">
                                        <div class="form-group">
                                            <label for="name">Phone <span class="do">*</span></label>
                                            <input type="text" class="form-control" id="name" placeholder="họ">
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group mb-3">
                                    <label for="name">Thông tin thêm </label>
                                    <textarea  rows="3" class="form-control" id="name" placeholder="họ">
                                    </textarea>
                                </div>

                                <button class="utmavobold mb-4 border-0 btn do3 text-white text-uppercase">Thanh toán</button>
                            </form>

                        </div>
                        <div class="tab-pane fade" id="xacnhan" role="tabpanel" aria-labelledby="xacnhan-tab">
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
