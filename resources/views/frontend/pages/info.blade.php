@extends('frontend.layouts.master')
@section('content')
<section>
    <div id="slider" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#slider" data-slide-to="0" class="active"></li>
            <li data-target="#slider" data-slide-to="1"></li>
            <li data-target="#slider" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="/images/about.jpg" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item">
            <img src="/images/about.jpg" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item">
            <img src="/images/about.jpg" class="d-block w-100" alt="...">
            </div>
        </div>
    </div>
</section>
<section class="container">
    <h1 class="utmavobold fs30 mt-4 text-uppercase">ABOUT US DTJ HOMETEL</h1>
    <div class="about mb-5">
        Dear!<br/><br/>

        Inheriting and enhancing the experience from the distribution of high-end real estate products, consulting and investment services of DTJ Group 10 year ago. DTJ Hometel was born with the mission to become a unit providing holiday apartments for customers in all parts of the country with unreasonable costs.<br/><br/>

        From June 2018, DTJ Hometel will officially come into operation with Green Bay apartment rental service at Bai Chay, Ha Long City.<br/><br/>
        <img src="/images/a1.jpg" alt=""><br/>
        Conveniently located in the heart of the ferry terminal of Halong City, it is easily accessible from the commercial and service centers, Tuan Chau Island, major city attractions such as Marina Bay Beach, Little Vietnam Street, Halong Marine Plaza, TiNiWorld, SunWorld, Hoi An – Halong, Halong Night Market, CGV Cinemas. In-house services bring you the best service, DTJ Hometel is the ideal place to start your trip in Quang Ninh..<br/>
        <img class="w-100" src="/images/a2.jpg" alt=""><br/>
        100% of DTJ Hometel apartments in Green Bay apartments have a view of the bay with spacious views and modern furniture.<br/><br/>
        <img src="/images/a3.jpg" alt=""><br/>
        The next objective of the company is to promote online business: service of exchange, booking and payment of car, room and tour costs, as well as accept payment of diverse routes, tourist destinations novelty aims to technologicalization, facilitating and saving time of effort of customers.


    </div>
</section>
@endsection
