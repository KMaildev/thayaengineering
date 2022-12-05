@extends('layouts.app')
@section('title', '- Download Detail')
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
                                {{ $download->title ?? '' }}
                            </strong>
                        </span>
                    </h3>
                    <hr />
                    <p style="text-align: justify">
                        {!! $download->description ?? '' !!}
                    </p>

                    @php
                        $values = explode(',', $download->download_files);
                    @endphp
                    @foreach ($values as $download_file)
                        @if ($download_session == 'have_download_session')
                            <a href="{{ $download_file }}" class="button button1" target="_blank">
                                <i class="fa-solid fa-file-pdf"></i>
                                PDF File
                            </a>
                        @else
                            <button class="button button1" id="myBtn" data-bs-toggle="modal"
                                data-bs-target="#exampleModal">
                                <i class="fa-solid fa-file-pdf"></i>
                                PDF File
                            </button>
                        @endif
                    @endforeach
                </div>
            </div>
        </div>
    </body>


    <!-- Modal -->
    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <form action="{{ route('download_user.store') }}" autocomplete="off" method="POST">
                @csrf
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">
                            Registration Form
                        </h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <div class="mb-3">
                            <label for="exampleInputEmail1" class="form-label">Your Name</label>
                            <input type="text" class="form-control" name="name">
                        </div>

                        <div class="mb-3">
                            <label for="exampleInputEmail1" class="form-label">Your Phone</label>
                            <input type="text" class="form-control" name="phone">
                        </div>

                        <div class="mb-3">
                            <label for="exampleInputEmail1" class="form-label">Address</label>
                            <input type="text" class="form-control" name="address">
                        </div>

                        <div class="mb-3">
                            <label for="exampleInputEmail1" class="form-label">Fields</label>
                            <select name="download_categorie_id" id="" class="form-control">
                                <option value="">
                                    -- Please Select Your Field --
                                </option>
                                @foreach ($fields as $field)
                                    <option value="{{ $field->id }}">
                                        {{ $field->field ?? '' }}
                                    </option>
                                @endforeach
                            </select>
                        </div>

                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </div>
                </div>
            </form>
        </div>
    </div>

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
