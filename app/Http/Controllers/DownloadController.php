<?php

namespace App\Http\Controllers;

use App\Models\Download;
use App\Models\DownloadCategory;
use App\Models\Field;
use Illuminate\Http\Request;

class DownloadController extends Controller
{

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $download_categories_data = DownloadCategory::findOrFail($id);
        $downloads = Download::where('download_categorie_id', $id)->get();
        return view('download.index', compact('download_categories_data', 'downloads'));
    }


    public function detail($id)
    {
        $download_session = session()->get('have_download_session') ?? 'no';
        $fields = Field::all();
        $download = Download::findOrFail($id);
        return view('download.detail', compact('download', 'download_session', 'fields'));
    }
}
