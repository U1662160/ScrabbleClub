

@if(!$winnedMatches)
  <p class="help-block"> {{$player->username}} have not win any match yet. </p>

@endif
<p class="help-block"> {{$player->username}} won {{$player->WinnedMatches()->count()}} matches</p>

@foreach($winnedMatches as $winnedMatch)
<div class="panel panel-success col-lg-6">
  <div class="panel-heading">
    <div class="media-object ">
       <h4 class="help-block"> Match Place: {{$winnedMatch->place}}
        <span class="pull-right help-block" >
          <strong> Date : {{$winnedMatch->date->format('d-m-y')}} </strong>
           <p> <small class="pull-right"> {{$winnedMatch->date->diffForHumans()}} </small></p>

        </span>
      </h4>
    </div>
  </div>
  <div class="panel-footer">
    <div class="row">
      <div class="col-md-4">
        <h4 class="help-block">Player1: {{ $winnedMatch->getPlayer1()->username}}</h4>
          <p class="help-block"> Score:{{$winnedMatch->player1_score}} </p>
      </div>

      <div class="col-md-4">
        <h4 class="help-block">Player2: {{ $winnedMatch->getPlayer2()->username}}</h4>
         <p class="help-block"> Score:{{$winnedMatch->player2_score}} </p>
      </div>
      <div class="col-md-4">
        <h4 class="help-block">Winner: {{($winnedMatch->getWinner())? $winnedMatch->getWinner()->username: 'Equal Score'}}</h4>

      </div>
    </div>
  </div>
</div>
@endforeach
