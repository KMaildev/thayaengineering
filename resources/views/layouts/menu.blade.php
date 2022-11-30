{{-- <div class="spine-logo">
    <a href="{{ route('home') }}">
        <img src="wp-content/themes/thaya/images/spine-logo.png" alt="SPINE Architects Logo" />
    </a>
</div>
<div id="navbar" class="navbar">
    <div id="brand">
        <a href="{{ route('home') }}">
            <img src="wp-content/themes/thaya/images/spine-logo-mobile.png" alt="SPINE Architects" />
        </a>
    </div>
    <div id="hamburger">
        <a href="#" class="hamburger">=</a>
    </div>
    <div class="clear"></div>
</div> --}}

<nav role="full-horizontal">
    <div class="nav-yellobar">
        &nbsp;
    </div>
    <div class="menu-main-menu-container">
        <ul id="menu-main-menu" class="menu">

            <li id="menu-item-514"
                class="menu-item menu-item-type-post_type menu-item-object-page current-menu-item page_item page-item-504 current_page_item menu-item-514">
                <a href="{{ route('home') }}">
                    Home
                </a>
            </li>

            <li id="menu-item-10" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-10">
                <a href="{{ route('about.index') }}">About Us</a>
            </li>

            <li id="menu-item-24"
                class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-24">
                <a href="{{ route('project.index') }}">Projects</a>
                <ul class="sub-menu">
                    @foreach ($project_categories as $project_category)
                        <li id="menu-item-41"
                            class="menu-item menu-item-type-post_type menu-item-object-page menu-item-41">
                            <a href="{{ route('project.show', $project_category->id) }}">
                                {{ $project_category->title ?? '' }}
                            </a>
                        </li>
                    @endforeach
                </ul>
            </li>

            <li id="menu-item-24" class="menu-item menu-item-type-post_type menu-item-object-page  menu-item-24">
                <a href="javascript:void(0)">
                    Our Services
                </a>
                <ul class="sub-menu">
                    @foreach ($service_categories as $service_categorie)
                        <li id="menu-item-41"
                            class="menu-item menu-item-type-post_type menu-item-object-page menu-item-41">
                            <a href="{{ route('service.show', $service_categorie->id) }}">
                                {{ $service_categorie->title ?? '' }}
                            </a>
                        </li>
                    @endforeach
                </ul>
            </li>

            <li id="menu-item-33" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-33">
                <a href="news/index.html">
                    Download
                </a>
            </li>

            <li id="menu-item-33" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-33">
                <a href="news/index.html">News</a>
            </li>

            <li id="menu-item-37" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-37">
                <a href="{{ route('contact.index') }}">Contact Us</a>
            </li>
        </ul>
    </div>
</nav>
