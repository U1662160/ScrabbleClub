@if(!$LostMatches)
  <p class="help-block"> {{$player->username}} have not lose any match </p>

@endif
<p class="help-block"> {{$player->username}} lost {{$player->LostMatches()->count()}} matches</p>

@foreach($LostMatches as $LostMatch)
<div class="panel panel-danger col-lg-6">
  <div class="panel-heading">
    <div class="media-object ">
       <h4 class="help-block"> Match Place: {{$LostMatch->place}}
        <span class="pull-right help-block" >
          <strong> Date : {{$LostMatch->date->format('d-m-y')}} </strong>
           <p> <small class="pull-right"> {{$LostMatch->date->diffForHumans()}} </small></p>
        </span>
      </h4>
    </div>
  </div>
  <div class="panel-footer">
    <div class="row">
      <div class="col-md-4">
        <h4 class="help-block">Player1: {{ $LostMatch->getPlayer1()->username}}</h4>
          <p class="help-block"> Score:{{$LostMatch->player1_score}} </p>
      </div>

      <div class="col-md-4">
        <h4 class="help-block">Player2: {{ $LostMatch->getPlayer2()->username}}</h4>
         <p class="help-block"> Score:{{$LostMatch->player2_score}} </p>
      </div>
      <div class="col-md-4">
        <h4 class="help-block">Winner: {{($LostMatch->getWinner())? $LostMatch->getWinner()->username: 'Equal Score'}}</h4>

      </div>
    </div>
  </div>
</div>
@endforeach
