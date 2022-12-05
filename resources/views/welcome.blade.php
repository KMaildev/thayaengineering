@extends('layouts.app')
@section('title', '- Home')
@section('content')

    <body class="home page page-id-504 page-template page-template-template-projects page-template-template-projects-php"
        id="thayamain">

        @include('layouts.menu')

        <div id="slidesNav">
            <a href="#" class="arrow previous" rel="previous">Previous</a>
            <a href="#" class="arrow next" rel="next">Next</a>
        </div>

        <script>
            $(document).ready(function() {
                var slider = $("#thayamain, body");
                $(slider).vegas({
                    slides: [{
                            src: '{{ asset('data/home/2018_031.JPG') }}',
                            title: "",
                            title: "",
                            page: ""
                        },
                        {
                            src: '{{ asset('data/home/2019_03.JPG') }}',
                            title: "",
                            title: "",
                            page: ""
                        },
                        {
                            src: '{{ asset('data/home/DJI_0027.JPG') }}',
                            title: "",
                            title: "",
                            page: ""
                        },
                        {
                            src: '{{ asset('data/home/2019_06.JPG') }}',
                            title: "",
                            title: "",
                            page: ""
                        },
                        {
                            src: '{{ asset('data/home/2017_015.JPG') }}',
                            title: "",
                            title: "",
                            page: ""
                        },
                        {
                            src: '{{ asset('data/home/PrivateUnit.JPG') }}',
                            title: "",
                            title: "",
                            page: ""
                        },
                        {
                            src: '{{ asset('data/home/DSC07743.JPG') }}',
                            title: "",
                            title: "",
                            page: ""
                        },
                        {
                            src: '{{ asset('data/home/2018_020.JPG') }}',
                            title: "",
                            title: "",
                            page: ""
                        },
                    ],
                    animation: 'random',
                    transitionDuration: 2500,
                    init: function(globalSettings) {
                        console.log("Init");
                    },
                    play: function(index, slideSettings) {
                        console.log("Play");
                    },
                    walk: function(index, slideSettings) {

                    }
                });
            });
        </script>

        @include('layouts.footer')
    </body>
@endsection
