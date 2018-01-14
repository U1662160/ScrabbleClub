@extends('templates.default')
@section('title','All Players')
@section('content')
<h1 class="help-block text-center"> All players</h1>
<div class="container">
  @if(!$AllPlayers)
 <p class="help-block"> No players to show in this page</p>
  @endif

  <div class="row ">
        {{$AllPlayers->links() }}
  </div>
@foreach($AllPlayers as $player)

  <div class="card  col-md-4 help-block " >
    <img class="card-img-top pull-right" style="width:150px; height:150px;" src="{{($player->avatar)? '../avatars/'.$player->avatar : $player->getAvatar()}}" alt="Player-image">
    <div class="card-block">
      <h3 class=" card-title text-enter"><a href="{{route('scores.index',$player)}}">{{$player->username}}</a> </h3>
     <h4 class=" help-block"> Brief : </h4>
      <p class="card-text help-block">{{$player->username}} played  <strong> {{count($player->pastMatches())}} of  {{count($player->AllMatches())}} </strong> Matches and scored  <strong>  {{$player->AllScores()->sum() }} Goals </strong> with an average score of <strong>{{round($player->averageScore(),1)}} Goals/Match </strong> <a href="{{route('scores.index',$player)}}" class=" btn-link"> learn more </a>  </p>
    </div>
    <ul class="list-group list-group-flush">
       <li class="list-group-item well">
         <div class="row">


         <div class="col-md-3">
           <h4> <strong class="text-center ">Next Match</strong> </h4>
         </div>
         <div class="col-md-7 col-md-offset-1">
           <div class="row">
             <strong> Against: </strong>
             @if($player->NextfutureMatch())
             {{$player->getCompetitor($player->NextfutureMatch())->username}}
              @else
             <span>Unknown </span>
             @endif
           </div>
           <div class="row">
             <p> <strong> ON: </strong>
              @if($player->NextfutureMatch())
               {{$player->NextfutureMatch()->date->format('d-m-y')}}
            <small class="pull-right">({{$player->NextfutureMatch()->date->diffForHumans()}})</small>
               @else
              <span>Unknown </span>
              @endif
              </p>
           </div>



       </div>
       </div>
       </li>

       <li class="list-group-item ">
           <div class="row">
           <div class="col-md-3">
             <h4> <strong class="text-center ">Last played Match</strong> </h4>
           </div>
           <div class="col-md-7 col-md-offset-1">
             <div class="row">
               <div class="col-md-4">
                 <strong class="text-right"> Against: </strong>
               </div>
               <div class="col-md-8">
                 @if($player->lastPastMatch())
                   {{$player->getCompetitor($player->lastPastMatch())->username}}
                    @else
                   <span>Unknown </span>
                   @endif
              </div>
              </div>
             <div class="row">
               <div class="col-md-3">
               <p> <strong class="text-right"> ON: </strong>
              </div>
              <div class="col-md-9">
                @if($player->lastPastMatch())
                 {{$player->lastPastMatch()->date->format('d-M-y')}}
              <small class="pull-right">({{$player->lastPastMatch()->date->diffForHumans()}})</small>
                 @else
                <span>Unknown </span>
                @endif
                </p>
                </div>
             </div>
           </div>
          </div>
       </li>
   </ul>
<div class="row">
  <a href="{{route('scores.index',$player)}}" class="btn btn-info pull-right"> Visit Page</a>

</div>

<hr>

  </div>

@endforeach


</div>

@endsection
