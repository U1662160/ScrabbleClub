@extends ('templates/default')
@section('title','New Player')
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
			<h2 class="page-header help-block"> New Player </h2>
			<br>
			<form action="#" method="post" class="form-inline">

        <div class="form-group-lg  alert {{($errors->has('username'))? ' has-error' : ' '}}">
          <div class="input-group col-lg-6">

            <label for="username" class="input-group-addon">User Name </label>
            <input class="form-control" type="text" name="username" id="username" value="{{old('username')}}">
          </div>
					<!--logic to show the error msg	-->
					@if($errors->has('username'))
					<p class="help-block has-error">
						{{$errors->first('username')}}
					</p>
					@endif

        </div>
				<div class="form-group-lg  alert{{($errors->has('email')or $errors->has('dob'))? ' has-error' : ''}}">
          <div class="input-group col-lg-6 ">
            <label for="email" class="input-group-addon"> Email </label>
            <input class="form-control" type="text" name="email" id="email" value="{{old('email')}}">
          </div>


				<!--logic to show the error msg	-->
				@if($errors->has('email'))
					<p class="help-block">
						{{$errors->first('email')}}
					</p>
				@endif
				@if($errors->has('dob'))
					<p class="help-block">
						{{$errors->first('dob')}}
					</p>
				@endif
				  </div>
    {{ csrf_field() }}
        <input class="btn btn-success pull-right" type="submit" name="submit" value="Add New Player">
      </form>
    </div>
@endsection
</body>
