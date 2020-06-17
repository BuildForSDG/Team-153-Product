<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Application;
use App\AidGroup;
use App\Donation;
use App\Donor;


class ActivityController extends Controller
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
    
    public function index(){
            $user = Auth::user();
            $applications = new Application;
            $donations = new Donation;

            if (request()->has('aid_group')) {
                $applications = $applications->where('group_id', request('aid_group'));
            }
            if (request()->has('sort')) {
                $applications = $applications->orderBy('id', request('sort'));
            }

            $applications = $applications->paginate(5)->appends([
                'aid_group' => request('aid_group'),
                'id' => request('sort'),
            ]);
            foreach ($applications as $application) {
                $donation = Donation::where('id', $application->aid_id)->first();
                $group = AidGroup::where('id', $application->group_id)->first();
            }
            $applications = Application::where('user_id', $user->id)->paginate(5);
            $donations = Donation::where('user_id', $user->id)->paginate(5);
            
            return view('activity', ['applications' => $applications, 'donation' => $donation, 'group' => $group, 'donations' => $donations, 'user' => $user]);        
    }

    public function show($id){
        $aid = Donation::find($id);
        $user = Auth::user();
        $group = AidGroup::find($aid->aid_group);
        $donor = Donor::find($aid->donor_id);
        $application = Application::find($id);
        return view('application.show', ['aid' => $aid, 'user' => $user, 'group' => $group, 'donor' => $donor, 'application' => $application]);
    }
}
