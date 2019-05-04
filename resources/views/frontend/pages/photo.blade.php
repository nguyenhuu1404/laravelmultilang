@extends('frontend.layouts.master')
@section('content')
<section>
@if($slider)
    <img class="w-100" src="{{ Storage::url($slider->image) }}" alt="">
@else
    <img class="w-100" src="/images/slideranh.jpg" alt="">
@endif

</section>
<section>
    <div class="container">
        <h1 class="fs30 xanh2 text-uppercase utmavobold mt-4 mb-3">@lang('home.cnhalong')</h1>
        <div class="row">
            <div class="col-12 col-md-6">
            <a href="/images/2.JPG" data-fancybox="gallery" class="group">
                <img src="/images/2.JPG" alt="" class="w-100">
                </a>
            </div>
            <div class="col-12 col-md-6">
                <div class="row">
                    <div class="col-6 mb-4">
                        <a href="/images/3.JPG" data-fancybox="gallery" class="group">
                        <img src="/images/3.JPG" alt="" class="w-100">
                        </a>
                    </div>
                    <div class="col-6 mb-4">
                    <a href="/images/6.JPG" data-fancybox="gallery" class="group">
                        <img src="/images/6.JPG" alt="" class="w-100">
                        </a>
                    </div>
                    <div class="col-6 mb-4">
                    <a href="/images/7.JPG" data-fancybox="gallery" class="group">
                        <img src="/images/7.JPG" alt="" class="w-100">
                        </a>
                    </div>
                    <div class="col-6 mb-4">
                    <a href="/images/8.JPG" data-fancybox="gallery" class="group">
                        <img src="/images/8.JPG" alt="" class="w-100">
                        </a>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-3">
                <div class="row">
                    <div class="col-12 mb-4">
                        <a href="/images/9.JPG" data-fancybox="gallery" class="group">
                            <img src="/images/9.JPG" alt="" class="w-100">
                        </a>
                    </div>
                    <div class="col-12 mb-4">
                        <a href="/images/10.JPG" data-fancybox="gallery" class="group">
                            <img src="/images/10.JPG" alt="" class="w-100">
                        </a>
                    </div>
                </div>
            </div>
            <div class="col-6">
                <a href="/images/12.JPG" data-fancybox="gallery" class="group">
                    <img src="/images/12.JPG" alt="" class="w-100">
                </a>
            </div>
            <div class="col-3">
                <div class="row">
                    <div class="col-12 mb-4">
                        <a href="/images/13.JPG" data-fancybox="gallery" class="group">
                            <img src="/images/13.JPG" alt="" class="w-100">
                        </a>
                    </div>
                    <div class="col-12 mb-4">
                        <a href="/images/14.JPG" data-fancybox="gallery" class="group">
                            <img src="/images/14.JPG" alt="" class="w-100">
                        </a>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-12 col-md-6">
            <a href="/images/15.JPG" data-fancybox="gallery" class="group">
                <img src="/images/15.JPG" alt="" class="w-100">
                </a>
            </div>
            <div class="col-12 col-md-6">
                <div class="row">
                    <div class="col-6 mb-4">
                        <a href="/images/16.JPG" data-fancybox="gallery" class="group">
                        <img src="/images/16.JPG" alt="" class="w-100">
                        </a>
                    </div>
                    <div class="col-6 mb-4">
                    <a href="/images/17.JPG" data-fancybox="gallery" class="group">
                        <img src="/images/17.JPG" alt="" class="w-100">
                        </a>
                    </div>
                    <div class="col-6 mb-4">
                    <a href="/images/18.JPG" data-fancybox="gallery" class="group">
                        <img src="/images/18.JPG" alt="" class="w-100">
                        </a>
                    </div>
                    <div class="col-6 mb-4">
                    <a href="/images/19.JPG" data-fancybox="gallery" class="group">
                        <img src="/images/19.JPG" alt="" class="w-100">
                        </a>
                    </div>
                </div>
            </div>
        </div>

        <!--h2 class="fs30 xanh2 text-uppercase utmavobold mt-2 mb-3">CHI NHÁNH ĐÀ NẴNG</h2>
        <div class="row">
            <div class="col-6 mb-4">
                <a href="/images/dn1.jpg" data-fancybox="gallery" class="group">
                    <img src="/images/dn1.jpg" alt="" class="w-100">
                </a>
            </div>
            <div class="col-6 mb-4">
                <a href="/images/dn2.jpg" data-fancybox="gallery" class="group">
                    <img src="/images/dn2.jpg" alt="" class="w-100">
                </a>
            </div>
        </div>
        <div class="row">
            <div class="col-3 mb-4">
                <a href="/images/dn3.jpg" data-fancybox="gallery" class="group">
                    <img src="/images/dn3.jpg" alt="" class="w-100">
                </a>
            </div>
            <div class="col-3 mb-4">
                <a href="/images/dn4.jpg" data-fancybox="gallery" class="group">
                    <img src="/images/dn4.jpg" alt="" class="w-100">
                </a>
            </div>
            <div class="col-3 mb-4">
                <a href="/images/dn5.jpg" data-fancybox="gallery" class="group">
                    <img src="/images/dn5.jpg" alt="" class="w-100">
                </a>
            </div>
            <div class="col-3 mb-6">
                <a href="/images/dn7.jpg" data-fancybox="gallery" class="group">
                    <img src="/images/dn7.jpg" alt="" class="w-100">
                </a>
            </div>
        </div>
        <div class="row">
            <div class="col-6">
                <a href="/images/dn7.jpg" data-fancybox="gallery" class="group">
                    <img src="/images/dn7.jpg" alt="" class="w-100">
                </a>
            </div>
            <div class="col-3">
                <a href="/images/dn8.jpg" data-fancybox="gallery" class="group">
                    <img src="/images/dn8.jpg" alt="" class="w-100">
                </a>
            </div>
        </div>

        <h2 class="fs30 xanh2 text-uppercase utmavobold mt-4 mb-3">CHI NHÁNH HẢI PHÒNG</h2>
        <div class="row">
            <div class="col-6 mb-4">
                <a href="/images/hp1.jpg" data-fancybox="gallery" class="group">
                    <img src="/images/hp1.jpg" alt="" class="w-100">
                </a>
            </div>
            <div class="col-6 mb-4">
                <a href="/images/hn2.jpg" data-fancybox="gallery" class="group">
                    <img src="/images/hp2.jpg" alt="" class="w-100">
                </a>
            </div>
        </div>
        <div class="row">
            <div class="col-3">
                <div class="row">
                    <div class="col-12 mb-4">
                        <a href="/images/hp3.jpg" data-fancybox="gallery" class="group">
                            <img src="/images/hp3.jpg" alt="" class="w-100">
                        </a>
                    </div>
                    <div class="col-12 mb-4">
                        <a href="/images/hp4.jpg" data-fancybox="gallery" class="group">
                            <img src="/images/hp4.jpg" alt="" class="w-100">
                        </a>
                    </div>
                </div>
            </div>
            <div class="col-6">
                <a href="/images/hp5.jpg" data-fancybox="gallery" class="group">
                    <img src="/images/hp5.jpg" alt="" class="w-100">
                </a>
            </div>
            <div class="col-3">
                <div class="row">
                    <div class="col-12 mb-4">
                        <a href="/images/hp6.jpg" data-fancybox="gallery" class="group">
                            <img src="/images/hp6.jpg" alt="" class="w-100">
                        </a>
                    </div>
                    <div class="col-12 mb-4">
                        <a href="/images/hp7.jpg" data-fancybox="gallery" class="group">
                            <img src="/images/hp7.jpg" alt="" class="w-100">
                        </a>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-3 mb-4">
                <a href="/images/hp8.jpg" data-fancybox="gallery" class="group">
                    <img src="/images/hp8.jpg" alt="" class="w-100">
                </a>
            </div>
            <div class="col-3 mb-4">
                <a href="/images/hp9.jpg" data-fancybox="gallery" class="group">
                    <img src="/images/hp9.jpg" alt="" class="w-100">
                </a>
            </div>
            <div class="col-3 mb-4">
                <a href="/images/hp10.jpg" data-fancybox="gallery" class="group">
                    <img src="/images/hp10.jpg" alt="" class="w-100">
                </a>
            </div>
            <div class="col-3 mb-6">
                <a href="/images/hp11.jpg" data-fancybox="gallery" class="group">
                    <img src="/images/hp11.jpg" alt="" class="w-100">
                </a>
            </div>
        </div>

        <div-- class="row mb-5">
            <div class="col-6">
                <a href="/images/hp12.jpg" data-fancybox="gallery" class="group">
                    <img src="/images/hp12.jpg" alt="" class="w-100">
                </a>
            </div>
        </div-->


    </div>
</section>
@endsection
