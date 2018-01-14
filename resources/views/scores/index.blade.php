@extends ('templates/default')
@section('title','Page')
@section('content')
<div class="container">
  @if(isset($player))
    <h2 class="help-block text-center">  {{$player->username}}'s page </h2>
  <div class="row">

      <div class="col-md-4">
      <nav class="navbar " role="navigation">
          <a class="navbar-brand" href="#">
            <img src="{{($player->avatar)? '../../avatars/'.$player->avatar : $player->getAvatar()}}" alt="Player-image" width="70" height="70" class="d-inline-block align-top" alt="player-image">
          </a>
        <ul class="nav navbar-nav">
          <li class=""><a href="{{route('profile.avatar',$player)}}"> Add/Edit Image</a></li> <br>
          <li class=""><a href="{{route('profile.update',$player)}}">Update profile</a></li>

    @endif
       </ul>
         </nav>
       </div>

       <div class="col-md-8">
          <div class="row help-block">

           <div class="col-md-4">
             <div class="alert">

               <h4 >Firstname : {{($player->fname)? $player->fname : ' N/A'}}</h4>

             </div>

             <div class="alert">
               <h4>Last Name :{{($player->lname)? $player->lname : ' N/A'}} </h4>
             </div>
           </div>

            <div class="col-md-6">
              <div class="alert">
 <h4 >Email : {{$player->email}}</h4>
              </div>
              <div class="alert">
               <h4 >DOB :  {{($player->dob)?  $player->dob->format('d-M-Y') : ' N/A'}}</h4>
              </div>
            </div>

         </div>
      </div>

   </div>
</div>


<div class="container">
  <h3 class="help-block">Statics</h3>
  @include('scores.statics')
</div>
<hr>

<hr>
<div class="container">
  <h3 class="help-block">Future Matches</h3>
  @include('scores.futureMatches')
</div>
<hr>
<div class="container">
  <h3 class="help-block">Played Matches</h3>
  @include('scores.pastMatches')
</div>
<hr>
<div class=" container">
  <h3 class="help-block">  Matches Won </h3>
  @include('scores.winnedMatches')
</div>
<hr>
<div class=" container">
  <h3 class="help-block"> Equal Matches </h3>
  @include('scores.equalMatches')
</div>
<hr>
<div class=" container">
  <h3 class="help-block">  Matches Lost </h3>
  @include('scores.lostMatches')
</div>
@endsection
