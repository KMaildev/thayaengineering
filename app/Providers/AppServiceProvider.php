<?php

namespace App\Providers;

use App\Models\ProductCategory;
use App\Models\ProjectCategory;
use App\Models\ServiceCategory;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        $project_categories = ProjectCategory::all();
        $service_categories = ServiceCategory::all();
        $product_categories = ProductCategory::all();

        view()->share('project_categories', $project_categories);
        view()->share('service_categories', $service_categories);
        view()->share('product_categories', $product_categories);
    }
}
