  <hr>
<div class=" row ">


  <div class="media">
    <div class="media-left">
      <img src="" class="media-object" style="width:60px">
      <img class="media-object pull-right" style="width:90px; height:90px;" src="{{($player->avatar)? '../avatars/'.$player->avatar : $player->getAvatar()}}" alt="Player-image">

    </div>
    <div class="media-body">
      <h4 class="media-heading"> <a href="{{route('scores.index',$player)}}"> <strong><a href="{{route('scores.index',$player)}}">{{$player->username}}</a> </strong></a></h4>
      <div class="row help-block">
          <div class="col-md-2">
           <h4>All Matches </h4> {{count($player->AllMatches())}}
          </div>
          <div class="col-md-1">
           <h4>Played  </h4> {{count($player->pastMatches())}}
          </div>
          <div class="col-md-1">
           <h4>Won </h4> {{count($player->winnedMatches())}}
          </div>
          <div class="col-md-1">
           <h4>Lost </h4> {{count($player->lostMatches())}}
          </div>
          <div class="col-md-1">
           <h4>equal</h4> {{count($player->equalMatches())}}
          </div>
          <div class="col-md-2">
           <h4>Remain </h4> {{count($player->futureMatches())}}
          </div>
          <div class="col-md-2">
           <h4>Total score </h4> {{$player->allScores()->sum()}}
           </div>
          <div class="col-md-2">
           <h4>Average </h4> {{round($player->averageScore(),1)}}
          </div>
      </div>

    </div>
  </div>
</div>
