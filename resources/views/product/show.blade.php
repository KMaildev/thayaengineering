@extends('layouts.app')
@section('title', '- News & Blog')
@section('content')

    <style>
        /* Start */
        .news_hor {
            font-family: Barlow;
            position: relative;
            overflow: hidden;
            margin: 10px;
            max-width: 100%;
            width: 100%;
            /* background-color: #ffffff; */
            color: black;
            text-align: left;
            font-size: 16px;
            box-shadow: rgba(0, 0, 0, 0.24) 0px 3px 8px;
            padding: 15px;

            background-color: rgba(229, 226, 226, 0.5);
        }

        .news_hor img {
            width: 365px;
            float: left;
            position: relative;
            height: 100%;
            -webkit-transition: all 0.3s ease;
            transition: all 0.3s ease;
            padding-right: 30px;
            z-index: 1;
            padding: 20px;
        }


        .news_hor figcaption {
            padding: 1%;
            width: 100%;
            /* background-color: #ffffff; */
            /* background-color: rgba(0, 0, 0, 0.5); */
        }

        .news_hor h3 {
            font-family: "Cabin";
            text-transform: none;
            font-size: 18px;
            font-weight: 600;
            margin: 3px 0;
            color: white;
        }
    </style>

    <body class="page page-id-7 page-template-default" id="thayamain">
        @include('layouts.menu')
        <h3 style="text-align: center; padding-top: 20px;">
            <span style="color: #ed8e27; font-size: 25px; font-weight: bold;">
                {{ $product_categories_data->title ?? '' }}
            </span>
        </h3>
        @foreach ($products as $product)
            <figure class="news_hor">
                <img src="{{ $product->photo ?? '' }}" alt="Thaya Engineering" />
                <figcaption>
                    <h3>
                        {{ $product->product_title ?? '' }}
                    </h3>
                    <p style="font-size: 20px;">
                        {!! $product->description ?? '' !!}
                    </p>
                </figcaption>
            </figure>
        @endforeach
    </body>
    @include('layouts.footer')
    <script>
        $(document).ready(function() {
            var slider = $("#thayamain, body");
            $(slider).vegas({
                slides: [{
                    src: '{{ asset('data/service_bg.jpeg') }}'
                }],
                animation: 'random',
                init: function(globalSettings) {
                    //console.log("Init");
                },
                play: function(index, slideSettings) {
                    //console.log("Play");
                },
                walk: function(index, slideSettings) {
                    //console.log("Slide index " + index + " image " + slideSettings.title);
                    //$('.project-title').html(slideSettings.title);
                    //$('.project-description').html(slideSettings.description);
                }
            });
        });
    </script>
@endsection
