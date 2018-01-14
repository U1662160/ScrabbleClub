
@if(!$matches)
  <p class="help-block"> {{$player->username}} did not play any match yet</p>

@endif
<p class="help-block"> {{$player->username}} played  <strong> {{$player->AllMatches()->count()}}</strong> matches

with average Score :  <strong>{{$averageScore}} </strong> goals/ match</p>

@foreach($matches as $match)

<div class="panel panel-info col-lg-6">
  <div class="panel-heading">
    <div class="media-object ">
       <h4 class="help-block"> Match Place: {{$match->place}}
        <span class="pull-right help-block" >
          <strong> Date : {{$match->date->format('d-m-y')}} </strong>
          <p> <small class="pull-right"> {{$match->date->diffForHumans()}} </small></p>
        </span>
      </h4>
    </div>
  </div>
  <div class="panel-footer">
    <div class="row">
      @if($match->getPlayer1())
      <div class="col-md-4">
        <h4 class="help-block">Player1: {{ $match->getPlayer1()->username}}</h4>
          <p class="help-block"> Score:{{$match->player1_score}} </p>
      </div>
      @endif
  @if($match->getPlayer2())
      <div class="col-md-4">
        <h4 class="help-block">Player2: {{ $match->getPlayer2()->username}}</h4>
         <p class="help-block"> Score:{{$match->player2_score}} </p>
      </div>
    @endif
      @if($match->getWinner())
      <div class="col-md-4">
        <h4 class="help-block">Winner: {{($match->getWinner())? $match->getWinner()->username: 'Equal Score'}}</h4>

      </div>
      @endif
    </div>
  </div>
</div>

@endforeach
