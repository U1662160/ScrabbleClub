@if(!$pastMatches)
  <p class="help-block"> {{$player->username}} have no future matches </p>

@endif
<p class="help-block"> {{$player->username}} played {{count($pastMatches)}} matches</p>

@foreach($pastMatches as $pastMatch)
<div class="panel panel-primary col-lg-6">
  <div class="panel-heading">
   <h4 class=""> Match Place: {{$pastMatch->place}}
        <span class="pull-right" >
          <strong> Date : {{$pastMatch->date->format('d-m-y')}}</strong>
        <p> <small class="pull-right" style="color:white"> {{$pastMatch->date->diffForHumans()}}</small></p>
         </span>
    </h4>
  </div>
  <div class="panel-footer">
    <div class="row">
      <div class="col-md-4">
        <h4 class="help-block">Player1: {{ $pastMatch->getPlayer1()->username}}</h4>
          <p class="help-block"> Score:{{$pastMatch->player1_score}} </p>
      </div>

      <div class="col-md-4">
        <h4 class="help-block">Player2: {{ $pastMatch->getPlayer2()->username}}</h4>
         <p class="help-block"> Score:{{$pastMatch->player2_score}} </p>
      </div>
      <div class="col-md-4">
        <h4 class="help-block">Winner: {{($pastMatch->getWinner())? $pastMatch->getWinner()->username: 'Equal Score'}}</h4>

      </div>
    </div>
  </div>
</div>
@endforeach
