<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>
<head>
<link href="bootstrap/css/bootstrap.css" rel="stylesheet" />


<style>
body {
	height: 100%;
	margin: 0;
	background: url(assets/img/him_imag.jpg);
	background-size: 1440px 800px;
	background-repeat: no-repeat;
	display: compact;
}

.modal-header, h4, .close {
      background-color: #9d9d9d;
      color:white !important;
      text-align: center;
      font-size: 30px;
  }
  .modal-footer {
      background-color: #f9f9f9;
  }
</style>
</head>
<body>

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
			
		</div>

		<div class="navbar-collapse collapse navbar-responsive-collapse">
			<form class="navbar-form navbar-right">
				<input type="text" class="form-control" placeholder="Search">
			</form>
			<ul class="nav navbar-nav navbar-right">
				<li class="active"><a href="#">Home</a></li>
				<li><a href="signup.html">Signup</a></li>
				<li><a href="login.html">Login</a></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown">Explore<b class="caret"></b></a>
					<ul class="dropdown-menu">
						<li><a href="#">Contact us</a></li>
						<li class="divider"></li>
						<li><a href="#">Further Actions</a></li>
					</ul></li>
			</ul>
		</div>
		<!-- /.nav-collapse -->
	</div>
	
	
	<div class="container">
	<div class="jumbotron">
			<div>
				<h1>Welcome to GetAway!</h1>

			</div>

			<a class="btn btn-primary" href="signup.html">Signup » </a>
				<a href="#myModal" class="btn btn-primary" data-toggle="modal"> Login » </a>
		</div>
		

		<!-- Modal -->
		<div class="modal fade" id="myModal" role="dialog">
			<div class="modal-dialog">

				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header" style="padding: 35px 50px;">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4>
							<span class="glyphicon glyphicon-lock"></span> Login
						</h4>
					</div>
					<div class="modal-body" style="padding: 40px 50px;">
						<form id="myForm" action="login.do" method="post" class="bs-example form-horizontal" >
							<div class="form-group">
								<label for="usrname"><span
									class="glyphicon glyphicon-user"></span> Username</label> <input
									type="text" class="form-control" name="usrname" 
									placeholder="Enter email"/>
							</div>
							<div class="form-group">
								<label for="psw"><span
									class="glyphicon glyphicon-eye-open"></span> Password</label> <input
									type="text" class="form-control" name="pwd" 
									placeholder="Enter password"/>
							</div>
							<div class="checkbox">
								<label><input type="checkbox" value="" checked>Remember
									me</label>
							</div>
							<button type="submit" class="btn btn-success btn-block">
								<span class="glyphicon glyphicon-off"></span> Login
							</button>
						</form>
					</div>
					<div class="modal-footer">
						<button type="submit" class="btn btn-danger btn-default pull-left"
							data-dismiss="modal">
							<span class="glyphicon glyphicon-remove"></span> Cancel
						</button>
						<p>
							Not a member? <a href="signup.html">Sign Up</a>
						</p>
						<p>
							Forgot <a href="#">Password?</a>
						</p>
					</div>
				</div>

			</div>
		</div>
	</div>



</body>
</html>
