<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\Models\member;
use Carbon\Carbon;
class Match extends Model
{
  protected $fillable= [
    'game_id','player1','player2','place','date','player1_score','player2_score',
  ];

  protected $dates = [
    'date',
    ];
    //define the (reverse) relationship One to Many with Match model
    public function players(){
    return  $this->belongsTo('App\Models\member','id');
    }
 // get player  1 Data
    public function getPlayer1(){
      $player1=  member::where('id', $this->player1)->first();
      return $player1;
    }
   // get player 2 Data
    public function getPlayer2(){
      $player2=  member::where('id', $this->player2)->first();
      return  $player2;
    }

// Get the winner data
     public function GetWinner(){
       $winner = null;
       if ($this->player1_score > $this->player2_score) {
         $winner = $this->getPlayer1();
       }
       elseif ($this->player2_score > $this->player1_score) {
          $winner = $this->getPlayer2();
       }
      elseif ( $this->player2_score == $this->player1_score){
          $winner = null ;
      }
      // switch ($winner){
      // case  $this->player1_score > $this->player2_score:
      //   $winner = $this->getPlayer1();
      //   break;
      //   case  $this->player2_score < $this->player1_score:
      //     $winner = $this->getPlayer2();
      //     break;
      //     case  $this->player1_score == $this->player2_score:
      //       $winner = 'No one';
      //       break;
      // }
      return $winner;
     }
     
  }#
