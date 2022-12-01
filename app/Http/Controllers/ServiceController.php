<?php

namespace App\Http\Controllers;

use App\Models\Service;
use App\Models\ServiceCategory;
use Illuminate\Http\Request;

class ServiceController extends Controller
{

    public function show($id)
    {
        $service_category_data = ServiceCategory::findOrFail($id);
        $services = Service::where('service_categorie_id', $id)->get();
        return view('services.show', compact('service_category_data', 'services'));
    }

    public function serviceDetail($id)
    {
        $service_detail = Service::findOrFail($id);
        return view('services.detail', compact('service_detail'));
    }
}
