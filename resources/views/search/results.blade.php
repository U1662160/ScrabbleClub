@extends('templates.default')
@section('title','search results')
@section('content')
<div class="container">


@if(!$players->count())
<p class="help-block"> Sorry, No results found.   </p>
@else
@foreach($players as $player)
@include("player.playerBlock")
@endforeach
@endif
</div>
@endsection
