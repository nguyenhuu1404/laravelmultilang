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
        <h1 class="fs27 text-uppercase utmavobold mt-4 mb-3">@lang('home.contact')</h1>
        <div class="row mb-5">
            <div class="col-12 col-md-6">
                <div class="contact mb-3">
                    @lang('home.contact_title')
                </div>
                <div class="contact mb-4">
                    @lang('home.footer_info')
                </div>
                <form method="POST">
                    {{ csrf_field() }}
                    @if (session('message'))
                        <div class="alert alert-success">
                            @lang('home.contact_success')
                        </div>
                    @endif
                    <div class="form-group">
                        <input type="text" name="name" class="form-control {{ $errors->has('name') ? 'is-invalid' : '' }}" placeholder="@lang('home.fullname') (*)">
                        <div class="invalid-feedback">{{ $errors->first('name') }}</div>
                    </div>
                    <div class="form-group">
                        <input type="text" name="address" class="form-control" placeholder="@lang('home.address')">
                    </div>
                    <div class="form-group">
                        <input type="email" name="email" class="form-control {{ $errors->has('email') ? 'is-invalid' : '' }}" placeholder="Email (*)">
                        <div class="invalid-feedback">{{ $errors->first('email') }}</div>
                    </div>
                    <div class="form-group">
                        <input name="phone" type="text" class="form-control {{ $errors->has('phone') ? 'is-invalid' : '' }}" placeholder="@lang('home.phone') (*)">
                        <div class="invalid-feedback">{{ $errors->first('phone') }}</div>
                    </div>
                    <div class="form-group">
                        <textarea name="content" class="form-control" placeholder="@lang('home.note')" rows="3"></textarea>
                    </div>
                    <button type="submit" class="send">@lang('home.send')</button>
                </form>
            </div>
            <div class="col-12 col-md-6">
            <div class="mapouter">
            <div class="gmap_canvas"><iframe style="border: 0;" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3725.859343491171!2d107.00440131533135!3d20.958162995559626!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x314a5f34b3618489%3A0xcf921cfd99d422e2!2sDTJ+HOMETEL+HA+LONG!5e0!3m2!1sen!2s!4v1558337616356!5m2!1sen!2s" width="100%" height="585" frameborder="0" allowfullscreen=""></iframe></div>
            </div>
            </div>
        </div>
    </div>
</section>
@endsection
