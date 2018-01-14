<div class="form-group-lg  alert-primary">
    <div class="input-group  ">
      <label for="username" class="input-group-addon"> All Matches
      <p class="form-control col-lg-4"> {{count($matches)}}  </p>
      </label>
      <label for="username" class="input-group-addon"> Played
      <p class="form-control col-lg-4"> {{count($pastMatches)}}  </p>
      </label>
      <label for="username" class="input-group-addon"> Won
      <p class="form-control col-lg-4"> {{count($winnedMatches)}}  </p>
      </label>
      <label for="username" class="input-group-addon"> Lost
      <p class="form-control col-lg-4"> {{count($LostMatches)}}  </p>
      </label>

        <label for="username" class="input-group-addon"> Future Matches
        <p class="form-control col-lg-4"> {{count($futureMatches)}}  </p>
        </label>
        <label for="username" class="input-group-addon"> Average score
        <p class="form-control col-lg-4"> {{round($averageScore,1)}}  </p>
       </label>

    </div>
</div>
<hr>
<div class="form-group-lg  alert-primary help-block">
  <h3 class="help-block">Highest Score</h3>
    <div class="input-group ">
      <label for="" class="input-group-addon"> Total Score
      <p class="form-control col-lg-4"> {{$totalScores}}  </p>
     </label>
      <label for="" class="input-group-addon"> Highest Score
      <p class="form-control col-lg-4"> {{$highestScore}}  </p>
     </label>
     <label for="" class="input-group-addon"> Against
     <p class="form-control col-lg-4"> {{($competitor)?$competitor->username : 'N/A'}} </p>
    </label>
    <label for="" class="input-group-addon"> Place
    <p class="form-control col-lg-4"> {{($MyHighestScoreMatch)?$MyHighestScoreMatch->place : 'N/A'}} </p>
    </label>
    <label for="" class="input-group-addon"> Date

    <p class="form-control col-lg-4"> {{($MyHighestScoreMatch)?$MyHighestScoreMatch->date->format('d-m-y'): 'N/A'}}
      <small> ( {{($MyHighestScoreMatch)? $MyHighestScoreMatch->date->diffForHumans() : 'N/A'}} )</small></p>
    </label>


    <label for="" class="input-group-addon"> Winner
    <p class="form-control col-lg-4">
      <small>  {{($MyHighestScoreMatch)? $MyHighestScoreMatch->getWinner()->username : 'N/A'}}</small></p>
    </label>
 </div>

</div>
