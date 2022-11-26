@extends('layouts.app')
@section('title', '- Project')
@section('content')

    <body
        class="page page-id-38 page-child parent-pageid-13 page-template page-template-template-sub-projects page-template-template-sub-projects-php"
        id="thayamain">
        @include('layouts.menu')

        <div class="container">
            <script type="text/javascript">
                $(document).ready(function() {
                    var slider = $("#thayamain, body");
                    $(slider).vegas({
                        slides: [{
                            src: '{{ $project_categories_data->photo }}',
                        }],
                        transition: 'fade',
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

        <div id="gallery">
            <h2>{{ $project_categories_data->title ?? '' }}</h2>
            <div id="gallery-inside">
                <div class="gallery-navi float-left">
                    <a id="gallery-back" class="gallery-back" href="#"></a>
                </div>
                <div id="carousel-wrapper">
                    <div id="carousel">
                        <ul>
                            @foreach ($projects as $project)
                                <li>
                                    <a href="{{ route('project_detail', $project->id) }}">
                                        <h4>
                                            {{ $project->title ?? '' }}
                                        </h4>
                                        @php
                                            $values = explode(',', $project->photo);
                                        @endphp
                                        @foreach ($values as $key => $photo)
                                            @if ($key == 1)
                                                @php
                                                    break;
                                                @endphp
                                            @endif
                                            <img class="gallery-thumbnail" src="{{ $photo }}" rel="0" />
                                        @endforeach
                                    </a>
                                </li>
                            @endforeach
                        </ul>
                        <div class="clear">
                            <!-- clear -->
                        </div>
                    </div>
                </div>
                <div class="gallery-navi float-right">
                    <a href="#" class="gallery-next" id="gallery-next"></a>
                </div>
            </div>
        </div>

        @include('layouts.footer')
    </body>
@endsection
