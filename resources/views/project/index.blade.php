@extends('layouts.app')
@section('title', '- Contact Us')
@section('content')

    <body
        class="page page-id-13 page-parent page-template page-template-template-projects page-template-template-projects-php"
        id="">
        @include('layouts.menu')

        @foreach ($project_categories as $project_category)
            <div class="mySlides vegas-slide vegas-transition-fade vegas-transition-fade-in"
                style="transition: all 2500ms ease 0s;">
                <div class="vegas-slide-inner"
                    style="background-image: url({{ $project_category->photo ?? '' }}); background-color: rgb(0, 0, 0); background-position: center center; background-size: cover;">
                </div>
            </div>
        @endforeach

        <div id="slidesNav">
            <a onclick="plusSlides(-1)" href="javascript:void(0)" class="arrow previous" rel="previous">Previous</a>
            <a onclick="plusSlides(1)" href="javascript:void(0)" class="arrow next" rel="next">Next</a>
        </div>

        <script>
            let slideIndexJS = 1;
            showSlides(slideIndexJS);

            function plusSlides(n) {
                showSlides(slideIndexJS += n);
            }

            function showSlides(n) {
                let i;
                let slidesjs = document.getElementsByClassName("mySlides");
                if (n > slidesjs.length) {
                    slideIndexJS = 1
                }
                if (n < 1) {
                    slideIndexJS = slidesjs.length
                }
                for (i = 0; i < slidesjs.length; i++) {
                    slidesjs[i].style.display = "none";
                }
                slidesjs[slideIndexJS - 1].style.display = "block";
            }


            $(document).ready(function() {
                var slider = $("#thayamain, body");
                var currentSlidePage = '';
                $('body').on('click', '.vegas-slide', function(e) {
                    window.location.href = currentSlidePage;
                });

                $(slider).vegas({
                    slides: [],

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
                    }
                });
            });
        </script>
        @include('layouts.footer')
    </body>
@endsection
