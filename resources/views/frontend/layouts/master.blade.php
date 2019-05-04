<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">
<head>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    @if(isset($title))
        <title>{{ $title }}</title>
    @else
        <title>DTJ Hometel</title>
    @endif
    @if(isset($description))
        <meta name="description" content="{{ $description }}">
    @else
        <meta name="description" content="DTJ Hometel là căn hộ khách sạn cao cấp với đầy đủ tiện nghi, dịch vụ đẳng cấp 3*+, thiết kế tối giản ,tiện nghi tinh tế đến từng chi tiết ..">
    @endif
    <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
	<link rel="stylesheet" href="{{ asset('css/bootstrap.min.css') }}">
	<link rel="stylesheet" href="{{ asset('css/all.css') }}">
    <link rel="stylesheet" href="{{ asset('css/jquery-ui.css') }}">
    <link rel="stylesheet" href="{{ asset('css/jquery.fancybox.min.css') }}">
    <link rel="stylesheet" href="{{ asset('css/styles.css') }}">

    @yield('styles')
    <script src="{{ asset('js/jquery-1.12.4.js') }}"></script>
    <script src="{{ asset('js/jquery-ui.js') }}"></script>
    <script src="{{ asset('js/jquery.fancybox.min.js') }}"></script>

</head>
<body>

    @include('frontend.common.header')
    @yield('content')
    @include('frontend.common.footer')

	<script src="{{ asset('js/bootstrap.min.js') }}"></script>
    <script src="{{ asset('js/popper.min.js') }}"></script>
    @stack('scripts')
    <script src="{{ asset('js/main.js') }}"></script>

</body>
</html>
