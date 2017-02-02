<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="bootstrap/css/bootstrap.css" rel="stylesheet" />
</head>
<body>

<div class="container-fluid text-center bg-grey">

<script src="bootstrap/js/jquery-3.1.1.js">
		
	</script>

	<script src="bootstrap/js/bootstrap.js">
		
	</script>

	<script src="bootstrap/js/jquery-ui.js"></script>
	
		<div class="navbar navbar-inverse">
		
		
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target=".navbar-responsive-collapse">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#">Getaway</a>
		</div>

	<div class="navbar-collapse collapse navbar-responsive-collapse">

		<ul class="nav navbar-nav">
			<li class="active"><a href="#">Home</a></li>
			<li><a href="#">Profile</a></li>
			<li><a href="#">Search</a></li>
			<li><a href="#">Reviews</a></li>
			<li><a href="#">Blog</a></li>
		</ul>
		
		<ul class="nav navbar-nav navbar-right"><li><a href="/GetAway"><span class="glyphicon glyphicon-log-out"></span>Logout</a></li></ul>
	</div>
	</div>

	<div class="jumbotron text-center">
		<h1>GetAway</h1>
		<p>Shoot your spot</p>
		<form class="form-inline">
			<div class="input-group">
				<select class="form-control" >
				<option>Minnesota</option>
				<option>Chicago</option>
				
				</select>
				<div class="input-group-btn">
					<button type="button" class="btn btn-primary">Search</button>
				</div>
			</div>
		</form>
	</div>
	
	<h2>Locations</h2><br>
  <h4>What we have created</h4>
  <div class="row text-center">
    <div class="col-sm-4">
      <div class="thumbnail">
        <img src="assets/img/paris.jpg" alt="assets/img/Paris" width="400" height="300">
        <p><strong>Paris</strong></p>
        <p>Yes, we built Paris</p>
      </div>
    </div>
    <div class="col-sm-4">
      <div class="thumbnail">
        <img src="assets/img/newyork.jpg" alt="New York" width="400" height="300">
        <p><strong>New York</strong></p>
        <p>We built New York</p>
      </div>
    </div>
    <div class="col-sm-4">
      <div class="thumbnail">
        <img src="assets/img/sanfran.jpg" alt="San Francisco" width="400" height="300">
        <p><strong>San Francisco</strong></p>
        <p>Yes, San Fran is ours</p>
      </div>
    </div>
    </div>
    </div>
</body>
</html>