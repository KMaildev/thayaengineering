@extends('layouts.app')
@section('title', '- Service Detail')
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
                                {{ $service_detail->title ?? '' }}
                            </strong>
                        </span>
                    </h3>
                    <hr />
                    <p style="text-align: justify">
                        {!! $service_detail->description ?? '' !!}
                    </p>

                    @php
                        $values = explode(',', $service_detail->gallery);
                    @endphp
                    @foreach ($values as $photo)
                        <div class="gallery">
                            <img src="{{ $photo }}" alt="Thaya Engineering"
                                style="width: 100%; height: 200px; background-size: contain; object-fit: cover;">
                        </div>
                    @endforeach
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
