@extends('layouts.app')
@section('title', '- Contact Us')
@section('content')

    <body class="home page page-id-504 page-template page-template-template-projects page-template-template-projects-php"
        id="thayamain">

        @include('layouts.menu')

        <div class="container text-white">
            <div class="row">

                <div class="col-md-5">
                    <div class="col-md-offset-2">
                        <p>
                            <span style="color: #eb9022;">
                                <strong>Myanmar:</strong>
                            </span>
                            Thudhamma Road, Yangon, Myanmar
                        </p>
                        <p>
                            <span style="color: #eb9022;">
                                <strong>Contact:</strong>
                            </span>
                            <a href="tel:09 518 6262">
                                09 518 6262
                            </a>
                        </p>

                        <p>
                            <span style="color: #eb9022;">
                                <strong> G-mail:</strong>
                            </span>
                            <a href="mailto:thayaengrg@gmail.com">thayaengrg@gmail.com</a>
                        </p>

                        <p>
                            <span style="color: #eb9022;">
                                <strong> E-mail:</strong>
                            </span>
                            <a href="mailto:info@thayaengrg.com">info@thayaengrg.com</a>
                        </p>
                    </div>

                    <div class="col-md-offset-2">
                        <div class="col-md-9 col-sm-7">
                            <iframe
                                src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d122182.59467663817!2d96.07351236297825!3d16.865697042597528!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x68dace16a2830641!2sTHAYA%20ENGINEERING%20CO.%2C%20LTD!5e0!3m2!1sen!2smm!4v1606361352853!5m2!1sen!2smm"
                                height="450" frameborder="0" style="border:0; width: 100%;" allowfullscreen=""
                                aria-hidden="false" tabindex="0" data-time="300" class="onStep"
                                data-animation="fadeInLeft"></iframe>
                        </div>
                    </div>
                </div>

            </div>

            <script type="text/javascript">
                $(document).ready(function() {
                    var slider = $("#thayamain, body");
                    $(slider).vegas({
                        slides: [{
                            src: '{{ asset('data/contact/IMG_0798.JPG') }}'
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
        </div>

    </body>
    @include('layouts.footer')
@endsection
