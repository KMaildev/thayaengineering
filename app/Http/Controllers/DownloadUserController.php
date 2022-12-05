<?php

namespace App\Http\Controllers;

use App\Http\Requests\StoreDownloadUser;
use App\Models\DownloadHistory;
use App\Models\DownloadUser;
use Illuminate\Http\Request;

class DownloadUserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreDownloadUser $request)
    {
        $job = new DownloadUser();
        $job->name = $request->name;
        $job->phone = $request->phone;
        $job->address = $request->address;
        $job->apply_date = date("Y-m-d H:i:s a");
        $job->download_categorie_id = $request->download_categorie_id;
        $job->save();
        $request->session()->put('have_download_session', 'have_download_session');

        $id = $job->id;
        $request->session()->put('session_id', $id);
        return redirect()->back()->with('success', 'You can download this PDF Now!');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }


    public function StoreDownloadHistory(Request $request)
    {

        $session_id = session()->get('session_id') ?? '';
        $download_user = DownloadUser::findOrFail($session_id);

        $download_file_name = $request->download_file_name;

        $history = new DownloadHistory();
        $history->name = $download_user->name ?? '';
        $history->phone = $download_user->phone ?? '';
        $history->address = $download_user->address ?? '';
        $history->download_user_id = $download_user->id;
        $history->download_files = $download_file_name;
        $history->download_date = date("Y-m-d H:i:s a");
        $history->save();

        return json_encode(array(
            "statusCode" => 200,
            "FIle" => $download_file_name,
        ));
    }
}
