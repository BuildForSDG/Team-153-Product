<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class DonorController extends Controller
{
    public static function find($id){
        return static::where('user_id', $id)->first();
    }
}
