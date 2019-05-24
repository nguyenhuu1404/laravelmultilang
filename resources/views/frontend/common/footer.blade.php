<footer data-wow-duration="4s" class="footer text-white wow fadeInUp">
    <div class="container">
        <div class="footer1 pt-5 pb-4">
            <div class="row">
                <div class="col-12 col-md-4">
                    <h2 class="fs21 mb-4 text-uppercase utmavobold text-white">@lang('home.contactus')</h2>

                    @lang('home.footer_info')
                    <div class="mb-3 mt-3 solid2"></div>

                    @lang('home.signup')<br>
                    <form action="/home/saveemail" method="post">
                        {{ csrf_field() }}
                        <div class="row mt-3">
                            <div class="col-9">
                                <div class="form-group">
                                    <input name="email" type="text" class="form-control {{ $errors->has('email') ? 'is-invalid' : '' }}" placeholder="Email">
                                    <div class="invalid-feedback">{{ $errors->first('email') }}</div>
                                </div>
                            </div>
                            <div class="col-3">
                            <button class="form-control btn btn-light">@lang('home.send')</button>
                            </div>
                            @if(session('emailsuccess'))
                            <div class="alert col-12 alert-success">@lang('home.emailsuccess')</div>
                            @endif
                        </div>
                    </form>
                    <div class="">
                        <a href="{{setting('site.facebook')}}" class="ml-0 text-white"><i class="fab fs40 fa-facebook-square"></i></a>
                        <a href="{{setting('site.instagram')}}" class="ml-0 fs40 text-white"><i class="fab fa-instagram"></i></a>
                        <a href="{{setting('site.twitter')}}" class="ml-0 fs40 text-white"><i class="fab fa-twitter-square"></i></a>
                        <a href="{{setting('site.zalo')}}" class="text-white"><img style="width: 38px; margin-bottom: 22px;" src="/images/zalo.png" alt=""></a>

                    </div>

                </div>
                <div class="col-12 col-md-4">
                    @if($globalNews)
                    <h2 class="fs21 mb-4 text-uppercase utmavobold text-white">@lang('home.topnews')</h2>
                        @php
                        $i = 0;
                        @endphp
                        @foreach($globalNews as $new)
                        <div class="row mb-3">
                            <div class="col-md-5 pr-0 col-5">
                                <a href="/tin-tuc/{{$new['id']}}-{{$new['slug']}}">
                                    <img src="{{ Storage::url($new['image']) }}" class="w-100" alt="">
                                </a>
                            </div>
                            <div class="col-md-7 col-7">
                                <a class="text-white" href="/tin-tuc/{{$new['id']}}-{{$new['slug']}}">
                                <h5 class="fs12 mb-2 lh20 utmavobold">
                                    {!!$new->getTranslatedAttribute('title', $locale, 'fallbackLocale')!!}
                                </h5>
                                </a>

                                <a class="text-white" href="/tin-tuc/{{$new['id']}}-{{$new['slug']}}">@lang('home.readmore') <i class="fas fa-long-arrow-alt-right"></i></a>
                            </div>
                        </div>
                        @if($i < 2)
                        <div class="mb-3 solid"></div>
                        @endif
                        @php $i++; @endphp
                        @endforeach
                    @endif


                </div>
                <div class="col-12 col-md-4">
                    <h2 class="fs21 mb-4 text-uppercase utmavobold text-white">@lang('home.connectus')</h2>
                    <div class="row pr-3">

                    @if($ketnoi)
                        @php
                            $knimages = json_decode($ketnoi->images);
                        @endphp
                        @foreach($knimages as $image)
                        <div class="col-md-4 col-4 mb-3 pr-0">
                            <a href="{{ Storage::url($image) }}" data-fancybox="gallery" class="single_image">
                            <img class="w-100" src="{{ Storage::url($image) }}" alt="">
                            </a>
                        </div>
                        @endforeach
                    @endif

                    </div>
                </div>
            </div>
        </div>

    </div>
    <div class="footer2">
        <div class="container">
            @lang('home.copyright')
        </div>

    </div>
</footer>
