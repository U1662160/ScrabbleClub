<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\member;
use Validator;

class SearchController extends Controller
{
    public function getResults(Request $request){
      Validator::make($request->all(),[
        'query'=>'required|max:10',
      ])->validate();
      $query = $request->input('query');
      $players = member::where('username','LIKE',"%{$query}%")->get();
        return view('search.results')->with('players',$players);
    }
}
