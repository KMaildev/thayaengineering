<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<!DOCTYPE html>
<html lang="en-US">
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" />
    <title>THAYA Engineering Co.,Ltd @yield('title')</title>

    <script type="text/javascript">
        ! function(e, n, t) {
            var a;

            function o(e) {
                var t = n.createElement("canvas"),
                    a = t.getContext && t.getContext("2d");
                return !(!a || !a.fillText) && (a.textBaseline = "top", a.font = "600 32px Arial", "flag" === e ? (a
                        .fillText(String.fromCharCode(55356, 56812, 55356, 56807), 0, 0), 3e3 < t.toDataURL().length) :
                    (a.fillText(String.fromCharCode(55357, 56835), 0, 0), 0 !== a.getImageData(16, 16, 1, 1).data[0]))
            }

            function i(e) {
                var t = n.createElement("script");
                t.src = e, t.type = "text/javascript", n.getElementsByTagName("head")[0].appendChild(t)
            }
            t.supports = {
                simple: o("simple"),
                flag: o("flag")
            }, t.DOMReady = !1, t.readyCallback = function() {
                t.DOMReady = !0
            }, t.supports.simple && t.supports.flag || (a = function() {
                t.readyCallback()
            }, n.addEventListener ? (n.addEventListener("DOMContentLoaded", a, !1), e.addEventListener("load", a, !
                1)) : (e.attachEvent("onload", a), n.attachEvent("onreadystatechange", function() {
                "complete" === n.readyState && t.readyCallback()
            })), (a = t.source || {}).concatemoji ? i(a.concatemoji) : a.wpemoji && a.twemoji && (i(a.twemoji), i(a
                .wpemoji)))
        }(window, document, window._wpemojiSettings);
    </script>
    <style type="text/css">
        img.wp-smiley,
        img.emoji {
            display: inline !important;
            border: none !important;
            box-shadow: none !important;
            height: 1em !important;
            width: 1em !important;
            margin: 0 .07em !important;
            vertical-align: -0.1em !important;
            background: none !important;
            padding: 0 !important;
        }
    </style>

    <link rel='stylesheet' href='{{ asset('wp-content/themes/thaya/styleb897.css?ver=4.3.30') }}' type='text/css'
        media='all' />
    <link rel='stylesheet' href='{{ asset('wp-content/themes/thaya/css/menub897.css?ver=4.3.30') }}' type='text/css'
        media='all' />
    <link rel='stylesheet' href='{{ asset('wp-content/themes/thaya/css/vegasb897.css?ver=4.3.30') }}' type='text/css'
        media='all' />
    <script type='text/javascript' src='{{ asset('wp-content/themes/thaya/js/jquery-1.11.2.minb897.js?ver=4.3.30') }}'>
    </script>

    <script type='text/javascript' src='{{ asset('wp-content/themes/thaya/js/vegasb897.js?ver=4.3.30') }}'></script>

    <script type='text/javascript'
        src='{{ asset('wp-content/themes/thaya/js/jquery.scrollTo-1.4.2-minb897.js?ver=4.3.30') }}'></script>

    <script type='text/javascript'
        src='{{ asset('wp-content/themes/thaya/js/jquery.serialScroll-1.2.2-minb897.js?ver=4.3.30') }}'></script>

    <script type='text/javascript' src='{{ asset('wp-content/themes/thaya/js/projects-sliderb897.js?ver=4.3.30') }}'>
    </script>

    <script type='text/javascript' src='{{ asset('wp-content/themes/thaya/js/spineb897.js?ver=4.3.30') }}'></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
        integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>

@yield('content')

<script type='text/javascript' src='{{ asset('wp-includes/js/comment-reply.minb897.js?ver=4.3.30') }}'></script>

</html>
