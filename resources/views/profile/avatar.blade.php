@extends('templates.default')
@section('title','Update Profile')
@section('content')

<body>
<div class="container">

  <div class="col-lg-10 col-md-offset-1">
    <h2 class="page-header help-block"> upload player photo </h2>
    <div class="row">
       <div class="col-md-6">
        <img class="card-img-top pull-right" src="{{($player->avatar)? '../../avatars/'.$player->avatar : $player->getAvatar()}}" alt="player- photo">
       </div>
    </div>
    <br>
    <form action="#" enctype="multipart/form-data" method="post" class="form-inline" >

      <div class="form-group-lg  alert{{($errors->has('avatar') )? ' has-error' : ' '}}">
        <div class="input-group col-lg-5">
          <label for="avatar" class="input-group-addon ">Add Image </label>
          <input class="form-control" type="file" name="avatar" id="avatar" value="">
        </div>
        @if($errors->has('avatar'))
        <p class="help-block has-error">
          {{$errors->first('avatar')}}
        </p>
        @endif
      </div>
        {{csrf_field()}}
      <input class="btn btn-success pull-right" type="submit" name="submit" value="uplade Image">

    </form>
    <a class="btn btn-info" href="{{route('scores.index',$player)}}"> <<- {{$player->username}}'s Page</a>
  </div>
</div>
@endsection
