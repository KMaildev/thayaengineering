<?php

namespace App\Providers;

use App\Models\ProjectCategory;
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
        view()->share('project_categories', $project_categories);
    }
}
