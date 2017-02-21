<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="bootstrap/css/bootstrap.css" rel="stylesheet" />
<title>Post</title>
</head>
<body>
	<script src="bootstrap/js/jquery-3.1.1.js">
		
	</script>

	<script src="bootstrap/js/bootstrap.js">
		
	</script>

	<script src="bootstrap/js/jquery-ui.js"></script>
	
	<div class="container">

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
				<li><a href="#">Post</a></li>
				<li><a href="#">Search</a></li>

			</ul>

			<ul class="nav navbar-nav navbar-right">
				<li><a href="/GetAway"><span
						class="glyphicon glyphicon-log-out"></span>Logout</a></li>
			</ul>
		</div>
	</div>

	<div class="jumbotron text-center">
		<h1>Shoot your spot</h1>

		<form class="form-inline">
			<div class="input-group">
				<select class="form-control">
					<option>Minnesota</option>
					<option>Chicago</option>

				</select>
				<div class="input-group-btn">
					<button type="button" class="btn btn-primary">Search</button>
				</div>
			</div>
		</form>
	</div>
</div>


</body>
</html>