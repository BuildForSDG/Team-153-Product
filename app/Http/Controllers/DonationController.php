<?php

namespace App\Http\Controllers;

use App\Donation;
use App\AidGroup;
use App\Application;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;


class DonationController extends Controller
{
    public function user()
    {
        return $this->belongsTo('App\User');
    }
    public static function find($id){
        return static::where('user_id', $id)->first();
    }
    public function create(){
        $user = Auth::user();
        $groups = AidGroup::all();
        return view('donate', ['user' => $user, 'groups' => $groups]);
    }    
}
