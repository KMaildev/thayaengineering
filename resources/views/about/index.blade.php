@extends('layouts.app')
@section('title', '- About')
@section('content')

    <body class="page page-id-7 page-template-default" id="thayamain">
        @include('layouts.menu')

        <div class="container text-white">
            <div class="row">
                <div class="col-md-6 col-lg-6 col-sm-6" style="width: 70%">
                    <h3>
                        <span style="color: #ed8e27;">
                            <strong>Who We Are?</strong>
                        </span>
                    </h3>
                    <hr />
                    <p style="text-align: justify">
                        THAYA is a registered civil engineering company under Directorate of Investment and Company
                        Administration (DICA) since December 2012 as Core business of Civil Engineering, M&E and Information
                        Technology(IT) Company. Our core teams include project managers, engineers and technical personnel
                        who has more than 10 years of oversea experience and technical knowledge.
                    </p>


                    <h3>
                        <span style="color: #ed8e27;">
                            <strong>Management:</strong>
                        </span>
                    </h3>
                    <hr />
                    <p style="text-align: justify">
                        THAYA is driven by experienced persons who have accumulated more than 20 years of experience in
                        Engineering management and technical services. They are involved in Business Development,
                        Procurement, Project Management, and Administration of Company Operation. And they also have oversea
                        project experience in Building Construction, Pumping Station and Waste Water Treatment Plant
                    </p>


                    <h3>
                        <span style="color: #ed8e27;">
                            <strong>Our company Philosophy:</strong>
                        </span>
                    </h3>
                    <hr />
                    <p style="text-align: justify">
                        Success only comes with Commitment, Discipline, Integrity, Innovation, Team Work and
                        Professionalism.
                    </p>


                    <h3>
                        <span style="color: #ed8e27;">
                            <strong>Our Mission:</strong>
                        </span>
                    </h3>
                    <hr />
                    <p style="text-align: justify">
                        To be the best associate for our clients, providers and workers. To recognize our perspective, we
                        will endeavour for successful development, functional quality, client care and powerful product
                        placement
                    </p>


                    <h3>
                        <span style="color: #ed8e27;">
                            <strong>Our vision:</strong>
                        </span>
                    </h3>
                    <hr />
                    <p style="text-align: justify">
                        To be a fully trusted partner, and always deliver beyond expectation
                    </p>


                    <h3>
                        <span style="color: #ed8e27;">
                            <strong>Our Objective:</strong>
                        </span>
                    </h3>
                    <hr />
                    <p style="text-align: justify">
                        To provide our clients with “We are fully supported” experience when we are chosen to execute their
                        projects and required services.
                    </p>

                </div>
            </div>

            <script type="text/javascript">
                $(document).ready(function() {
                    var slider = $("#thayamain, body");
                    $(slider).vegas({
                        slides: [{
                            src: '{{ asset("data/about/1.JPG") }}'
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
