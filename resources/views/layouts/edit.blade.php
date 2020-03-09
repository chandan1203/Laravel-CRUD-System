@extends('layouts.app')

@section('content')
	<div class="container">
    @if ($errors->any())
      @foreach ($errors->all() as $error)
        <div class="alert alert-dismissible alert-danger">
          <button type="button" class="close" data-dismiss="alert">×</button>
          <strong>Oh snap!</strong>{{ $error }}
        </div>
      @endforeach
    @endif
		<div class="panel panel-default">
			<div class="panel-heading">
				<h2>Add a Student</h2>
			</div>
			<div class="panel-body">
<form class="form-horizontal" action="{{ route('update',$student->id) }}" method="post">
	{{ csrf_field() }}
  <fieldset>
    <div class="form-group">
      <label for="firstName" class="col-md-2 control-label">First Name</label>

      <div class="col-md-10">
        <input type="text" class="form-control" name="firstName" value="{{ $student->first_name }}"  placeholder="Input First Name">
      </div>
    </div>    
    <div class="form-group">
      <label for="lastName" class="col-md-2 control-label">Last Name</label>

      <div class="col-md-10">
        <input type="text" class="form-control" name="lastName" value="{{ $student->last_name }}"  placeholder="Input Last Name">
      </div>
    </div>    
    <div class="form-group">
      <label for="email" class="col-md-2 control-label">Email</label>

      <div class="col-md-10">
        <input type="text" class="form-control" name="email" value="{{ $student->email }}"  placeholder="Input Email Address">
      </div>
    </div>    
    <div class="form-group">
      <label for="phone" class="col-md-2 control-label">Phone</label>

      <div class="col-md-10">
        <input type="text" class="form-control" name="phone" value="{{ $student->phone }}"  placeholder="Input Phone Number">
      </div>
    </div>








    <div class="form-group">
      <div class="col-md-10 col-md-offset-2">
        <button type="button" class="btn btn-default">Cancel</button>
        <button type="submit" class="btn btn-primary">Update</button>
      </div>
    </div>
  </fieldset>
</form>
			</div>
		</div>
	</div>
@endsection