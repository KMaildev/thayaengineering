<div id="navbar" class="navbar">
    <div id="brand">
        <a href="{{ route('home') }}">
            <img src="{{ asset('data/logo.png') }}" alt="Thaya Engineering" />
        </a>
    </div>
    <div id="hamburger">
        <a href="#" class="hamburger">=</a>
    </div>
    <div class="clear"></div>
</div>

<nav role="full-horizontal">
    <div class="menu-main-menu-container">
        <ul id="menu-main-menu" class="menu">

            <li id="menu-item-514" class="d-none d-lg-block">
                <a href="{{ route('home') }}">
                    <img src="{{ asset('data/logo.png') }}" alt="Thaya Engineering" style="width: 150px;" />
                </a>
            </li>

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

            <li id="menu-item-24"
                class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-24">
                <a href="{{ route('project.index') }}">Products</a>
                <ul class="sub-menu">
                    @foreach ($product_categories as $product_categoy)
                        <li id="menu-item-41"
                            class="menu-item menu-item-type-post_type menu-item-object-page menu-item-41">
                            <a href="{{ route('product.show', $product_categoy->id) }}">
                                {{ $product_categoy->title ?? '' }}
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

            <li id="menu-item-24" class="menu-item menu-item-type-post_type menu-item-object-page  menu-item-24">
                <a href="javascript:void(0)">
                    Download
                </a>
                <ul class="sub-menu">
                    @foreach ($download_categories as $download_categorie)
                        <li id="menu-item-41"
                            class="menu-item menu-item-type-post_type menu-item-object-page menu-item-41">
                            <a href="{{ route('download.show', $download_categorie->id) }}">
                                {{ $download_categorie->title ?? '' }}
                            </a>
                        </li>
                    @endforeach
                </ul>
            </li>

            <li id="menu-item-33" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-33">
                <a href="{{ route('news.index') }}">News</a>
            </li>

            <li id="menu-item-37" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-37">
                <a href="{{ route('contact.index') }}">Contact Us</a>
            </li>

            <li id="menu-item-514">
                <img src="{{ asset('data/iso.jpeg') }}" alt="Thaya Engineering" style="width: 100px;" />
            </li>
        </ul>
    </div>
</nav>
