<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\Models\Match;
use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Carbon\carbon;

class member extends Authenticatable
{
    use Notifiable;

    protected $fillable =
    [
    'fname','lname','username','phone','email','dob','house','street','city','postcode',
    ];
    protected $dates= [
      'dob',
    ];

    //Define the One to Many Relation with Match model(player1 column is FK)
    public function MatchesAsplayer1(){
    return  $this->hasMany('App\Models\Match','player1');
    }
  //Define the One to Many Relation with Match model(player2 column is FK)
    public function MatchesAsplayer2(){
    return  $this->hasMany('App\Models\Match','player2');
    }

     // merge to get all matches
    public function AllMatches(){
    return $this->MatchesAsplayer1()->get()->merge($this->MatchesAsplayer2()->get());
    }

    public function futureMatches(){
      $now = Carbon::now();
      return $this->AllMatches()->where('date','>', $now)->all();
    }
    public function NextfutureMatch(){
      $now = Carbon::now();
      return $this->AllMatches()->where('date','>', $now)->first();
    }

    public function pastMatches(){
      $now = Carbon::now();
      return $this->AllMatches()->where('date','<', $now)->all();
    }
    public function lastPastMatch(){
      $now = Carbon::now();
      return $this->AllMatches()->where('date','<', $now)->last();
    }
    //Get All won matches
     public function  WinnedMatches(){
       $wonAsPlayer1 = $this->MatchesAsplayer1()-> whereColumn('player1_score', '>' , 'player2_score')->get();

       $wonAsPlayer2 = $this->MatchesAsplayer2()->whereColumn('player2_score' ,'>', 'player1_score')->get();
          //dd($wonAsPlayer2);
       return  $wonAsPlayer1->merge($wonAsPlayer2);
     }

     public function LostMatches(){
       $lostAsPlayer1 = $this->MatchesAsplayer1()->whereColumn('player1_score', '<', 'player2_score')->get();

       $lostAsPlayer2 = $this->MatchesAsplayer2()->whereColumn('player2_score', '<', 'player1_score')->get();
       return $lostAsPlayer1->merge($lostAsPlayer2);
     }

     public function equalMatches(){
       return  collect($this->pastMatches())->filter(function($match){
         return $match->player1_score == $match->player2_score;
       });

    //  return collect($this->pastMatches())->where('player2_score','player1_score')->all();

      // ->where('player1_score','player2_score')
      // ->orWhere('player1_score','!=',0)
      // ->orWhere('player2_score','!=',0) ;
     }

     public function AllScores(){
       $scoresAsPlayer1 = $this->MatchesAsplayer1()->pluck('player1_score');
       $scoresAsPlayer2 = $this->MatchesAsplayer2()->pluck('player2_score');
       //dd($scoresAsPlayer2);
       return $scoresAsPlayer1->merge($scoresAsPlayer2)
       ->where($this->player1_score,'!=',0)
       ->Where($this->player2_score,'!=',0);
     }

     public function AverageScore(){
       return $this->AllScores()->avg();
     }

public function getCompetitor(match $match){

  if($this->id == $match->player1){
     $competitorId = $match->player2;
  }else{
   $competitorId = $match->player1;
};
    return member::find($competitorId);
}

public function getAvatar()
  {
    return "https://www.gravatar.com/avatar/{{md5(trim($this->email))}}?d=mm&s=150" ;
  }
   // // get the matches wonned
   //  public function winnedMatches(){
   //    $myMatches = $this->AllMatches();
   //    foreach ($myMatches  as $match)
   //     {
   //       if( $match->GetWinner()->email === $this->email)
   //       {
   //         $winnedMatches[] = $match;
   //       }else{
   //            $winnedMatches=[];
   //        }
   //     }
   //    return $winnedMatches;
   //  }
   //
   //  public function LostMatches(){
   //    $myLostMatches = $this->AllMatches();
   //    foreach ($myLostMatches  as $LostMatch)
   //    {
   //      if( $LostMatch->GetWinner()->email !== $this->email)
   //      {
   //        $LostMatches[] = $LostMatch;
   //        dd($LostMatches);
   //       }else{
   //          $LostMatches=[];
   //       }
   //    }
   //   return  $LostMatches;
   //  }

  }#
