@extends('templates.default')
@section('title','Update Profile')
@section('content')

<body>
<div class="container">

  <div class="col-lg-10 col-md-offset-1">
    <h2 class="page-header help-block"> Update {{$player->username}} Profile  </h2>
    <small>(All fields are required)</small>
    <br>
    <form action="#" method="post" class="form-inline" >



      <div class="form-group-lg  alert{{($errors->has('fname') )? ' has-error' : ' '}}">
        <div class="input-group col-lg-5">
          <label for="fname" class="input-group-addon ">First Name </label>
          <input class="form-control" type="text" name="fname" id="fname" value="{{old('fname')}}">
        </div>
        @if($errors->has('fname'))
        <p class="help-block has-error">
          {{$errors->first('fname')}}
        </p>
        @endif
      </div>


  <div class="form-group-lg  alert{{($errors->has('lname'))? ' has-error' : ' '}}">
      <div class="input-group col-lg-5">
        <label for="userName" class="input-group-addon ">Last Name </label>
        <input class="form-control" type="text" name="lname" id="lname" value="{{old('lname')}}">
        </div>
        <!--logic to show the error msg	-->
        @if($errors->has('lname'))
        <p class="help-block has-error">
          {{$errors->first('lname')}}
        </p>
        @endif

  </div>

      <div class="form-group-lg  alert{{($errors->has('phone'))? ' has-error' : ''}}">
        <div class="input-group col-lg-5 ">
          <label for="phone" class="input-group-addon"> Phone </label>
          <input class="form-control" type="text" name="phone" id="phone" value="{{old('phone')}}" placeholder=" eg. 07123456789">

        </div>
        <!--logic to show the error msg	-->
        @if($errors->has('phone'))
          <p class="help-block">
            {{$errors->first('phone')}}
          </p>
          @endif
        </div>

          <div class="form-group-lg  alert{{($errors->has('phone'))? ' has-error' : ''}}">
        <div class="input-group col-lg-5 ">
          <label for="dob" class="input-group-addon">DOB </label>
          <input class="form-control" type="date" name="dob" id="dob" value="{{old('dob')}}">

        </div>
        <!--logic to show the error msg	-->
        @if($errors->has('dob'))
          <p class="help-block">
            {{$errors->first('dob')}}
          </p>
          @endif
        </div>

        <div class="form-group-lg  alert{{($errors->has('house'))? ' has-error' : ''}}">
          <div class="input-group col-lg-5 ">
            <label for="house" class="input-group-addon">House Number </label>
            <input class="form-control" type="text" name="house" id="house" value="{{old('house')}}" placeholder=" Numbers Only">

          </div>
          @if($errors->has('house'))
            <p class="help-block">
              {{$errors->first('house')}}
            </p>
          @endif
      </div>
        <div class="form-group-lg  alert{{($errors->has('city'))? ' has-error' : ''}}">
        <div class="input-group col-lg-5">
          <label for="city" class="input-group-addon">City </label>
          <input class="form-control" type="text" name="city" id="city" value="{{old('city')}}" placeholder=" e.g. Huddersfield ">
        </div>
        @if($errors->has('city'))
          <p class="help-block">
            {{$errors->first('city')}}
          </p>
          @endif
      </div>
      <div class="form-group-lg  alert{{($errors->has('street'))? ' has-error' : ''}}">
            <div class="input-group col-lg-5 ">
              <label for="street" class="input-group-addon">Street </label>
              <input class="form-control" type="text" name="street" id="street" value="{{old('street')}}" placeholder=" e.g. Oxford Road ">
            </div>
            @if($errors->has('street'))
              <p class="help-block">
                {{$errors->first('street')}}
              </p>
            @endif
     </div>

      <div class="form-group-lg  alert{{($errors->has('postcode'))? ' has-error' : ''}}">
              <div class="input-group col-lg-5 ">
                <label for="postcode" class="input-group-addon">Post Code </label>
                <input class="form-control" type="text" name="postcode" id="postcode" value="{{ old('postcode')}}" placeholder="  ">
              </div>

          <!--logic to show the error msg	-->

        @if($errors->has('postcode'))
          <p class="help-block">
            {{$errors->first('postcode')}}
          </p>
        @endif
      </div>

  {{ csrf_field() }}
      <input class="btn btn-success pull-right" type="submit" name="submit" value="Update Profile">
    </form>
  </div>
</div>

</body>
@endsection
