<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Application;
use Carbon\Carbon;

class ApplyController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function apply(Request $request){
        $this->validate($request, [
            'text' => 'required',
            'phone' => 'required',
            'payment' => 'required',
            'agree' => 'required',
        ]);
        // create application
        $application = new Application;
        $application->user_id = $request->input('user');
        $application->aid_id = $request->input('aid');
        $application->group_id = $request->input('group');
        $application->requirements = $request->input('text');
        $application->channel = $request->input('payment');
        $application->account = $request->input('phone');
        $application->status = "Processing";
        $application->created_at = Carbon::now()->toDateTimeString();
        $application->updated_at = Carbon::now()->toDateTimeString();
        $application->save();

        return redirect('/activity')->with('success', 'Application Successful');
    }
}
