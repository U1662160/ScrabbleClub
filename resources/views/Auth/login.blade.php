@extends ('templates/default')
@section('title','Login ')
@section('content')

<!DOCTYPE html>
	<html>

	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<title></title>
		<link rel="stylesheet" href="">
		<!--link to bootstrap CSS library-->
		<!-- Latest compiled and minified CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
		<!-- Optional theme -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
		<!-- Latest compiled and minified JavaScript -->
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
	</head>

	<body>
<div class="container">

		<div class="col-lg-8 col-md-offset-2">
			<h2 class="page-header help-block"> Enter oyur Eamil to view your records  </h2>
			<br>
			<form action="" method="post" class="form-inline">


				<div class="form-group-lg  alert">
          <!--logic to show the error msg	-->
          <div class="input-group col-lg-10 ">
            <label for="username" class="input-group-addon"> Email </label>
            <input class="form-control" type="text" name="email" id="email" value="">
          </div>
        </div>

        <input type="submit" name="submit" value="view my records">
      </form>
    </div>
@endsection
