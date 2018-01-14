@if(!$futureMatches)
  <p class="help-block"> {{$player->username}} have no future matches </p>

@endif
<p class="help-block"> {{$player->username}} has {{count($futureMatches)}}  future matches</p>

@foreach($futureMatches as $futureMatch)
<div class="panel panel-info col-lg-6">
  <div class="panel-heading">
    <div class="media-object ">
       <h4 class=""> Match Place: {{$futureMatch->place}}
        <span class="pull-right" >
          <strong> Date : {{$futureMatch->date->format('d-m-y')}} </strong>
           <p> <small class="pull-right"> {{$futureMatch->date->diffForHumans()}} </small></p>

        </span>
      </h4>
    </div>
  </div>
  <div class="panel-footer">
    <div class="row">
      <div class="col-md-4">
        <h4 class="help-block">Player1: {{ $futureMatch->getPlayer1()->username}}</h4>
          <p class="help-block"> Score:{{$futureMatch->player1_score}} </p>
      </div>

      <div class="col-md-4">
        <h4 class="help-block">Player2: {{ $futureMatch->getPlayer2()->username}}</h4>
         <p class="help-block"> Score:{{$futureMatch->player2_score}} </p>
      </div>
      <div class="col-md-4">
        <h4 class="help-block">Winner: {{($futureMatch->getWinner())? $futureMatch->getWinner()->username: 'Equal Score'}}</h4>

      </div>
    </div>
  </div>
</div>
@endforeach
