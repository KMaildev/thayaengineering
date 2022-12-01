@extends('layouts.app')
@section('title', '- News & Blog')
@section('content')
    <style>
        /* @import url("https://fonts.googleapis.com/css2?family=Barlow:ital,wght@0,400;0,500;0,600;0,700;1,400;1,500&family=Cabin:ital,wght@0,400;0,500;0,600;0,700;1,400;1,500;1,600;1,700&display=swap"); */
        /* Start */
        .news_hor {
            font-family: Barlow;
            position: relative;
            overflow: hidden;
            margin: 10px;
            max-width: 100%;
            width: 100%;
            background-color: #ffffff;
            color: black;
            text-align: left;
            font-size: 16px;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.15);
        }

        .news_hor img {
            width: 265px;
            float: left;
            position: relative;
            height: 100%;
            -webkit-transition: all 0.3s ease;
            transition: all 0.3s ease;
            padding-right: 30px;
            z-index: 1;
        }

        .news_hor:hover img,
        .news_hor.hover img {
            -webkit-transform: scale(1.1);
            transform: scale(1.1);
        }

        .news_hor figcaption {
            /* padding: 5%; */
            padding-bottom: 73px;
            width: 90%;
            background-color: #ffffff;
        }

        .news_hor h3 {
            font-family: "Cabin";
            text-transform: none;
            font-size: 18px;
            font-weight: 600;
            margin: 3px 0;
        }

        .news_hor footer {
            border-top: 1px solid rgba(0, 0, 0, 0.065);
            padding: 0 20px;
            font-size: 13px;
            line-height: 50px;
            text-align: left;
            position: absolute;
            bottom: 0;
            left: 0;
            width: 100%;
        }

        .hor_date {
            float: left;
            margin-left: 270px;
        }

        .news_hor a {
            left: 0;
            right: 0;
            top: 0;
            bottom: 0;
            position: absolute;
            z-index: 1;
        }
    </style>

    <body class="page page-id-7 page-template-default" id="thayamain">
        @include('layouts.menu')
        <div class="row" style="margin: 20px;">
            <h3 style="text-align: center; padding-top: 20px;">
                <span style="color: #ed8e27; font-size: 25px; font-weight: bold;">
                    News & Blog
                </span>
            </h3>

            @foreach ($news as $new)
                <a href="{{ route('news.show', $new->id) }}" style="text-decoration: none">
                    <figure class="news_hor">
                        <img src="{{ $new->photo ?? '' }}" alt="Thaya Engineering"
                            style="background-size: contain; object-fit: cover;" />
                        <figcaption>
                            <h4 style="font-size: 17px">
                                {{ $new->title ?? '' }}
                            </h4>
                            <p style="font-size: 15px">
                                {!! Str::limit($new->description, 200) !!}
                            </p>
                            <footer>
                                <div class="hor_date" style="text-align: left">
                                    {{ $new->upload_date ?? '' }}
                                </div>
                            </footer>
                        </figcaption>
                    </figure>
                </a>
            @endforeach
        </div>
    </body>
    @include('layouts.footer')
    <script></script>
@endsection
