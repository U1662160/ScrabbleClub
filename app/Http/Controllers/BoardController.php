<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\member;
use App\Models\Match;

class BoardController extends Controller
{

    public function BoardPlayers(member $member){

     $allPlayers = member::all();

      $qualifiedPlayers = $allPlayers->filter(function($qualifiedPlayer){
        if(count($qualifiedPlayer->pastMatches())>= 10){
            return $qualifiedPlayer;
            }
      });
      $boardPlayers= $qualifiedPlayers->sortByDesc(function($boardPlayer){
        return $boardPlayer->AverageScore();
      });
      $boardPlayers = collect($boardPlayers->take(10));
      //dd($boardPlayers);
      return view('board.index')->with('boardPlayers',$boardPlayers);
    }

  }#


//dd($boardPlayers);
     // foreach ($allPlayers as $player) {
     //   if($player->AllMatches()->count()>=3){
     //     $qualifiedPlayers[]=$player->id;
     //    }
     // }

//  $boardPlayers =   member::find([implode(',',$qualifiedPlayers)]);
  //dd($boardPlayers);
