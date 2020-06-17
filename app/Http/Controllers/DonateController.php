<?php

namespace App\Http\Controllers;

use App\Donation;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Carbon\Carbon;


class DonateController extends Controller
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
    
    public function donate(Request $request){
        $this->validate($request, [
            'group' => 'required',
            'name' => 'required',
            'describe' => 'required',
            'reg' => 'required',
            'payment' => 'required',
            'amount' => 'required',
            'deadline' => 'required',
            'agree' => 'required',
        ]);
        // create application
        $donation = new Donation;
        $user = Auth::user();

        $donation->user_id = $user->id;
        $donation->aid_group = $request->input('group');
        $donation->donation_name = $request->input('name');
        $donation->donation_description = $request->input('describe');
        $donation->donation_amount = $request->input('amount');
        $donation->applicant_requirements = $request->input('reg');
        $donation->payment_method = $request->input('payment');
        $donation->apply_deadline = $request->input('deadline');
        $donation->donation_status = "active";
        $donation->created_at = Carbon::now()->toDateTimeString();
        $donation->updated_at = Carbon::now()->toDateTimeString();

        $donation->save();

        return redirect('/activity')->with('success', 'Successful: Thank you for your donation');
    }
}
