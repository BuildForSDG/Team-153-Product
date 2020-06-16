<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ApplicationController extends Controller
{
    public static function find($id){
        return static::where('id', $id);
    }
}
