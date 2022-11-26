@extends('layouts.app')
@section('title', '- Contact Us')
@section('content')

    <body
        class="page page-id-13 page-parent page-template page-template-template-projects page-template-template-projects-php"
        id="thayamain">
        @include('layouts.menu')
        <div id="slidesNav">
            <a href="#" class="arrow previous" rel="previous">Previous</a>
            <a href="#" class="arrow next" rel="next">Next</a>
        </div>
        <div class="project-info">
            <h2 class="project-title"></h2>
        </div>
        <script>
            $(document).ready(function() {
                var slider = $("#thayamain, body");
                var currentSlidePage = '';
                $('body').on('click', '.vegas-slide', function(e) {
                    window.location.href = currentSlidePage;
                });

                var json = [{
                        "id": "1",
                        "msg": "hi",
                        "tid": "2013-05-05 23:35",
                        "fromWho": "hello1@email.se"
                    },
                    {
                        "id": "2",
                        "msg": "there",
                        "tid": "2013-05-05 23:45",
                        "fromWho": "hello2@email.se"
                    }
                ];


                $(slider).vegas({
                    slides: [{
                            src: "http://spinearchitects.com/wp-content/uploads/2015/09/Commercial.jpg",
                            title: "Commercial",
                            description: "",
                            page: "/projects/commercial"
                        },
                        {
                            src: "http://spinearchitects.com/wp-content/uploads/2015/09/Commercial.jpg",
                            title: "Commercial",
                            description: "",
                            page: "/projects/commercial"
                        },
                    ],

                    transition: 'fade',
                    transitionDuration: 2500,
                    init: function(globalSettings) {
                        //console.log("Init");
                    },
                    play: function(index, slideSettings) {
                        //console.log("Play");
                        console.log(slideSettings);
                    },
                    walk: function(index, slideSettings) {
                        currentSlidePage = slideSettings.page;
                        $('.project-title').html(slideSettings.title);
                    }
                });
            });

            function autoCall() {
                var url = '{{ url('project_categories_json') }}';
                $.ajaxSetup({
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    }
                });
                $.ajax({
                    method: 'GET',
                    url: url,
                    success: function(data) {

                    },
                    error: function(data) {}
                });
            }
            autoCall();
        </script>
        @include('layouts.footer')
    </body>
@endsection
