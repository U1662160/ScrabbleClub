<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Validator;
use Image;
use App\Models\member;
use App\Models\Match;
use Illuminate\Support\Facades\Auth;

class MemberController extends Controller
{

  public function getLogin(){
    return redirect()->route('Auth.login');
  }

   public function getAddPlayer(){
     return view('Auth.addPlayer');
   }

   public function postAddPlayer(Request $request){
    Validator::make($request->all(),[
      'username'=>'required|max:50|min:4|unique:members',
      'email'=>'required|email|max:255|unique:members',

    ])->validate();

    member::create([
      'username'=>$request->username,
      'email'=>$request->email,
    ]);
      return redirect()->route('home')->with('success',' New player Added, Please complete the player profile' );
    }

    public function getUpdateProfile(member $member){
      return view('profile.update')->with('player',$member);
    }

    public function postUpdateProfile(member $member, Request $request){

     Validator::make($request->all(),[

       'fname'=>'required|alpha_dash|max:50|min:2',
       'lname'=>'required|alpha_dash|max:50|min:2',
       'phone'=>'required|numeric',
       'dob'=>'required|date',
       'house'=>'required|numeric',
       'city'=>'required|max:50|min:2',
       'street'=>'required|max:50|min:2',
       'postcode'=>'required|max:8|min:5',
     ])->validate();

    $member->update([

         'fname'=>$request->fname,
         'lname'=>$request->lname,
         'phone'=>$request->phone,
         'dob'=>$request->dob,
         'house'=>$request->house,
         'city'=>$request->city,
         'street'=>$request->street,
         'postcode'=>$request->postcode,
       ]);
       return redirect()->route('profile.update',$member)
       ->with('player',$member)
       ->with('success','profile updated');
      }

        // working with member image
        public function getAvatar(member $member){
          return view('profile.avatar')->with('player', $member);
        }

      public function postAvatar(member $member, Request $request)
      {

      Validator::make($request->all(),[
      'avatar'=>'required|mimes:jpg,JPG,png,jpeg,gif,svg|max:2048',
      ])->validate();

      $img = $request->file('avatar');
      //dd($img->);
      $imgExt = $img->getClientOriginalExtension();
      //dd($imgExt);

      $imgName= htmlspecialchars($member->username . time().'.'.$imgExt);
      //d($imgName);
      // can use getClientOriginalExtension() or  guessClientExtension()

      //use the Intervention Package
      Image::make($img)->resize(200,200)->save(public_path('/avatars/'.$imgName));
      $member->avatar=$imgName;
      $member->save();
      ;
      //dd($member->avatar);
      return redirect()->back()
      ->with('player',$member)
      ->with('success','your profile image updated');
      }



      public function getAllPlayers(){
        $allPlayers = member::orderBy('username')->paginate(6);
        //dd($allPlayers);
        return view('player.AllPlayers')->with('AllPlayers',$allPlayers);
      }

      public function getMyMatches(member $member){
        return $matches = $member->AllMatches();
      }

      public function getMyAverageScore(member $member){
        return $member->averageScore();
      }

      public function getMyTotalScores(member $member){
        return $member->AllScores()->sum();
      }
      public function getMyhighestScore(member $member){
        return $member->AllScores()->max();
      }

     public function getMyhighestScoreMatch(member $member){
       $highestScore  = $this-> getMyhighestScore($member);
        //dd($highestScore);
       $myMatches = $this-> getMyMatches($member);
       //dd($myMatches);
        $myHighestScoreMatch = $myMatches->firstwhere('player1_score',$highestScore);

         if(!$myHighestScoreMatch){
             $myHighestScoreMatch =$myMatches->firstwhere('player2_score',$highestScore);
         }
         //dd($myHighestScoreMatch);
         return $myHighestScoreMatch; // return as match model
     }

// get the competitor details from the highest score match

     public function getMyhighestScoreMatchCompetitor(member $member)
     {
        $myHighestScoreMatch = $this->getMyhighestScoreMatch($member);
if (  $myHighestScoreMatch) {


        if($member->id == $myHighestScoreMatch->player1){
       $competitorId = $myHighestScoreMatch->player2;
      }elseif ($member->id == $myHighestScoreMatch->player2) {
          $competitorId = $myHighestScoreMatch->player1;
      }

         // $competitorId =  ($member->id != $myHighestScoreMatch->player1) ? $myHighestScoreMatch->player2 : $myHighestScoreMatch->player1;
         // dd($myHighestScoreMatch->player1);

        return $competitor = member::find($competitorId);
        }
     }

// return the upcomming matches
     public function getMyFutureMatches(member $member){
       return $member->futureMatches();
     }


     public function getMyPastMatches(member $member){
       return $member->pastMatches();
     }

     public function getMywinnedMatches(member $member){
      return $winnedMatches = $member->winnedMatches();
     }

     public function getEqualMatches(member $member){
       return $member->equalMatches();
     }

     public function getMyLostMatches(member $member){
       return $LostMatches = $member->LostMatches();
     }

      public function getMyScores(member $member){
        $matches = $this->getMymatches($member);
        $totalScores = $this->getMyTotalScores($member);
        $averageScore =$this->getMyAverageScore($member);
        $highestScore =$this->getMyHighestScore($member);
        $myHighestScoreMatch = $this->getMyHighestScoreMatch($member);
        $competitorInHighestScoreMatch= $this->getMyhighestScoreMatchCompetitor($member);
        $winnedMatches = $this->getMywinnedMatches($member);
        $equalMatches = $this->getEqualMatches($member);
        $LostMatches = $this->getMyLostMatches($member);
        $futureMatches = $this->getMyFutureMatches($member);
        $pastMatches = $this->getMyPastMatches($member);

        return view('scores.index')
        ->with('player',$member)
        ->with('totalScores',$totalScores)
        ->with('averageScore',$averageScore)
        ->with('highestScore',$highestScore)
        ->with('MyHighestScoreMatch',$myHighestScoreMatch)
        ->with('competitor',$competitorInHighestScoreMatch)
        ->with('matches',$matches)
        ->with('winnedMatches',$winnedMatches)
        ->with('LostMatches',$LostMatches)
        ->with('equalMatches',$equalMatches)
        ->with('futureMatches',$futureMatches)
        ->with('pastMatches',$pastMatches);
  }


  }#
