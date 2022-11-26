@extends('layouts.app')
@section('title', '- Home')
@section('content')

    <body
        class="page page-id-611 page-child parent-pageid-13 page-template page-template-template-project-details page-template-template-project-details-php"
        id="appmain">
        @include('layouts.menu')

        <div id="slidesNav">
            <a href="#" class="arrow previous" rel="previous">Previous</a>
            <a href="#" class="arrow next" rel="next">Next</a>
        </div>
        <div id="project-details" class="project-info">
            </h2>
            <h2>
                <span class="project-title"></span> - <span class="project-description"></span>
            </h2>
        </div>
        <div class="container"></div>

        <script>
            $(document).ready(function() {
                var slider = $("#appmain, body");
                var currentSlidePage = '';
                $(slider).vegas({
                    slides: [{
                        src: "http://spinearchitects.com/wp-content/uploads/2015/12/King-Metal-02-1600x9001.jpg",
                        title: "Title 1",
                        description: "Yangon, Myanmar",
                        page: "#"
                    }],

                    transition: 'fade',
                    transitionDuration: 2500,
                    init: function(globalSettings) {
                        //console.log("Init");
                    },
                    play: function(index, slideSettings) {
                        //console.log("Play");
                    },
                    walk: function(index, slideSettings) {
                        currentSlidePage = slideSettings.page;
                        $('.project-title').html(slideSettings.title);
                        $('.project-description').html(slideSettings.description);
                    }
                });
            });
        </script>

        @include('layouts.footer')
    </body>

@endsection
