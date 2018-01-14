<!doctype html>
<html lang="{{ app()->getLocale() }}">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<title>@yield('title')</title>

	<!-- Fonts -->
	<link href="https://fonts.googleapis.com/css?family=Raleway:100,600" rel="stylesheet" type="text/css">

	<!-- Bootstrap Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
</head>
<body>
<nav class="navbar navbar-default" role="navigation">
  <div class="container">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
       <a class="navbar-brand" href="">Scrabble Club</a>
    </div>

    <!-- Main navbar -->
    <div class="collapse navbar-collapse" >
   <ul class="nav navbar-nav">
        <li ><a href="{{route('player.AllPlayers')}}"> Players	</a></li>
				<li ><a href="{{route('board.index')}}">Board	</a></li>

    </ul>

      <form class="navbar-form pull-right" role="search" action="#">
        <div class="form-group">
          <input type="text" name="query" class="form-control" placeholder="Search players">
        </div>
        <button type="submit" class="btn btn-default">Search</button>
      </form>
 	 </div>
      <ul class="nav navbar-nav navbar-right">
		<li><a href="{{route('addPlayer')}}">New Player</a></li>
    </ul>

  </div><!-- /.container -->
</nav>

</body>
