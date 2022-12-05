@extends('layouts.app')
@section('title', '- News & Blog')
@section('content')
    <style>
        div.gallery {
            margin: 5px;
            border: 1px solid #ccc;
            float: left;
            width: 200px;
        }

        div.gallery:hover {
            border: 1px solid #777;
        }

        div.gallery img {
            width: 100%;
            height: auto;
        }

        div.desc {
            padding: 15px;
            text-align: center;
        }

        .button {
            background-color: #DA3A2F;
            /* Green */
            border: none;
            color: white;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 4px 2px;
            cursor: pointer;
        }

        .button1 {
            padding: 10px 24px;
        }
    </style>

    <body class="home page page-id-504 page-template page-template-template-projects page-template-template-projects-php"
        id="thayamain">

        @include('layouts.menu')
        <div class="container text-white">
            <div class="row">
                <div class="col-md-12 col-lg-12 col-sm-12" style="width: 100%">
                    <h3>
                        <span style="color: #ed8e27;">
                            <strong>
                                {{ $new->title ?? '' }}
                            </strong>
                        </span>
                    </h3>
                    <hr />
                    <p style="text-align: justify">
                        {!! $new->description ?? '' !!}
                    </p>
                    <hr>
                    <footer>
                        <div class="hor_date" style="text-align: left">
                            Share:
                            <i class="fa-brands fa-facebook fa-2xl"
                                onclick="window.location.href='https://www.facebook.com/sharer/sharer.php?u={{ url()->current() }}'"></i>
                            &nbsp;&nbsp;&nbsp;
                            <i class="fa-brands fa-twitter fa-2xl"
                                onclick="window.location.href='https://twitter.com/intent/tweet?url={{ url()->current() }}'"></i>
                        </div>
                    </footer>
                </div>
            </div>
        </div>
    </body>
    @include('layouts.footer')
    <script>
        $(".hover").mouseleave(
            function() {
                $(this).removeClass("hover");
            }
        );

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
