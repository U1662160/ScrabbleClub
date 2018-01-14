@extends('templates.default')
@section('title','Board')
@section('content')
@foreach($boardPlayers as $player)
<div class="container">
 @include('player.playerBlock')
</div>
@endforeach
@endsection
