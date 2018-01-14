@if(!$equalMatches)
  <p class="help-block"> {{$player->username}} have not lose any match </p>

@endif
<p class="help-block"> {{$player->username}} has {{$player->equalMatches()->count()}} equal score matches</p>

@foreach($equalMatches as $equalMatch)
<div class="panel panel-danger col-lg-6">
  <div class="panel-heading">
    <div class="media-object ">
       <h4 class="help-block"> Match Place: {{$equalMatch->place}}
        <span class="pull-right help-block" >
          <strong> Date : {{$equalMatch->date->format('d-m-y')}} </strong>
           <p> <small class="pull-right"> {{$equalMatch->date->diffForHumans()}} </small></p>
        </span>
      </h4>
    </div>
  </div>
  <div class="panel-footer">
    <div class="row">
      <div class="col-md-4">
        <h4 class="help-block">Player1: {{ $equalMatch->getPlayer1()->username}}</h4>
          <p class="help-block"> Score:{{$equalMatch->player1_score}} </p>
      </div>

      <div class="col-md-4">
        <h4 class="help-block">Player2: {{ $equalMatch->getPlayer2()->username}}</h4>
         <p class="help-block"> Score:{{$equalMatch->player2_score}} </p>
      </div>
      <div class="col-md-4">
        <h4 class="help-block">Winner: {{($equalMatch->getWinner())? $equalMatch->getWinner()->username: 'Equal Score'}}</h4>

      </div>
    </div>
  </div>
</div>
@endforeach
