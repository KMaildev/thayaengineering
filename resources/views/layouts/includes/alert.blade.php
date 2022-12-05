@if ($message = Session::get('success'))
    <center>
        <p style="color: green; font-size: 25px; margin-top: 10px;">
            {{ $message }}
        </p>
    </center>
@endif


@if ($message = Session::get('error'))
    <center>
        <p style="color: red; font-size: 25px; margin-top: 10px;">
            {{ $message }}
        </p>
    </center>
@endif


@if ($message = Session::get('warning'))
    <center>
        <p style="color: green; font-size: 25px; margin-top: 10px;">
            {{ $message }}
        </p>
    </center>
@endif


@if ($message = Session::get('info'))
    <center>
        <p style="color: green; font-size: 25px; margin-top: 10px;">
            {{ $message }}
        </p>
    </center>
@endif


@if ($errors->any())
    {{-- <div class="alert alert-solid-danger alert-dismissible d-flex align-items-center" role="alert">
        <i class="bx bx-xs bx-store me-2"></i>
        Please check the form below for errors
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close">
        </button>
    </div> --}}
@endif
