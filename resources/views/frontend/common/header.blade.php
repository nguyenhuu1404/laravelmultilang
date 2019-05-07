<div class="top">
    <div class="container">
        <div class="d-flex bd-highlight">
            <div class="bd-highlight p-1 pl-0 ">
                <i class="fas fa-phone-square"></i> {{setting('site.hotline')}}
            </div>
            <div class="mr-auto d-none d-sm-block bd-highlight p-1 pl-4">
                <i class="fas fa-envelope"></i> {{setting('site.email')}}
                </div>
            <div class="bd-highlight p-1">
                <form id="fromsearch" action="/search" method="get">
                    <div class="input-group">
                        <input id="is" type="text" class="form-control mw100 hidden bg-top border-right-0 h28" name="s" >
                        <div class="input-group-btn">
                            <button id="search" rel="0" class="border h28 lh26 bg-top border-0 rounded-right">
                            <i class="fa fa-search text-white" aria-hidden="true"></i>
                            </button>
                        </div>
                    </div>
                </form>
            </div>
            <div class="bd-highlight p-1">
                <a href="/home/vi"> <img src="/images/vn.png" alt=""></a>
                <a href="/home/en"><img src="/images/en.jpg" alt=""></a>
            </div>
            <div class="bd-highlight p-1  pr-0">
                <a class="fs13 rounded-pill bg-white p-1 pl-2 pr-2 text-black" href="/booking">@lang('home.bookingnow')</a>
            </div>
        </div>
    </div>
</div>

<header class="header">
    <div class="container p-0">
    <nav class="navbar navbar-expand-lg navbar-light">
        <a class="navbar-brand" href="/">
        <img src="{{ Storage::url(setting('site.logo')) }}" alt="logo">
        </a>
        <button class="navbar-toggler collapsed" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <i class="fa fa-bars"></i>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav main-menu ml-auto">
                {{menu('home', 'mainmenu')}}
            </ul>
        </div>
    </nav>
    </div>
</header>
