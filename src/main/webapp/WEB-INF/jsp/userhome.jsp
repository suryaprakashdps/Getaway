<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="bootstrap/css/bootstrap.css" rel="stylesheet" />
<link href="bootstrap/css/styles.css" rel="stylesheet" />

</head>
<body id="myPage" data-spy="scroll" data-target=".navbar"
	data-offset="50">

	<nav class="navbar navbar-default navbar-fixed-top">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#myNavbar">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#">GetAway</a>
		</div>
		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav navbar-right">
				<li><a href="#">HOME</a></li>
				<li><a href="#Search">SEARCH</a></li>
				<li><a href="#profile">PROFILE</a></li>

				<li><a href="/GetAway"><span
						class="glyphicon glyphicon-log-out"></span>Logout</a></li>
				<!--  <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">MORE
          <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Merchandise</a></li>
            <li><a href="#">Extras</a></li>
            <li><a href="#">Media</a></li> 
          </ul>
        </li> -->

			</ul>
		</div>
	</div>
	</nav>



	<!-- <div class="navbar navbar-inverse">


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
 -->

	<!-- <div id="myCarousel" class="carousel slide" data-ride="carousel">
		Indicators
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>

		</ol>

		Wrapper for slides
		<div class="carousel-inner" role="listbox">


			<div class="item active">
				<img src="assets/img/ny.jpg" alt="Chania" width="1200" height="700">
				<div class="carousel-caption">
					<h3>LA</h3>
					<p>Even though the traffic was a mess, we had the best time
						playing at Beach!</p>
				</div>
			</div>

			<div class="item">
				<img src="assets/img/niagara.jpg" alt="ng" width="1200" height="700">
				<div class="carousel-caption">
					<h3>LA</h3>
					<p>Even though the traffic was a mess, we had the best time
						playing at Beach!</p>
				</div>
			</div>

			<div class="item">
				<img src="assets/img/gc.jpg" alt="gc" width="1200" height="700">
				<div class="carousel-caption">
					<h3>LA</h3>
					<p>Even though the traffic was a mess, we had the best time
						playing at Beach!</p>
				</div>
			</div>
		</div>

		Left and right controls
		<a class="left carousel-control" href="#myCarousel" role="button"
			data-slide="prev"> <span class="glyphicon glyphicon-chevron-left"
			aria-hidden="true"></span> <span class="sr-only">Previous</span>
		</a> <a class="right carousel-control" href="#myCarousel" role="button"
			data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
	</div> -->

	<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
		</ol>

		<!-- Wrapper for slides -->
		<div class="carousel-inner" role="listbox">
			<div class="item active">
				<img src="assets/img/ny.jpg" alt="New York" width="1200"
					height="700">
				<div class="carousel-caption">
					<h3>New York</h3>
					<p>The atmosphere in New York is lorem ipsum.</p>
				</div>
			</div>

			<div class="item">
				<img src="assets/img/niagara.jpg" " alt="Chicago" width="1200"
					height="700">
				<div class="carousel-caption">
					<h3>Chicago</h3>
					<p>Thank you, Chicago - A night we won't forget.</p>
				</div>
			</div>

			<div class="item">
				<img src="assets/img/gc.jpg" alt="Los Angeles" width="1200"
					height="700">
				<div class="carousel-caption">
					<h3>LA</h3>
					<p>Even though the traffic was a mess, we had the best time
						playing at Venice Beach!</p>
				</div>
			</div>
		</div>

		<!-- Left and right controls -->
		<a class="left carousel-control" href="#myCarousel" role="button"
			data-slide="prev"> <span class="glyphicon glyphicon-chevron-left"
			aria-hidden="true"></span> <span class="sr-only">Previous</span>
		</a> <a class="right carousel-control" href="#myCarousel" role="button"
			data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
	</div>



	<div id="Search" class="container">

		<div class="jumbotron text-center">
			<h1>Shoot your spot</h1>

			<form class="form-inline" action="spot.do" method="post">
				<div class="input-group">
					<select class="form-control">
						<option>Minnesota</option>
						<option>Chicago</option>

					</select>
					<div class="input-group-btn">
						<button type="submit" class="btn btn-primary">Search</button>
					</div>
				</div>
			</form>
		</div>
	</div>
	<div id="profile" class="container">
		<h4>Profile Details</h4>
		<div class="panel panel-info">

			<div class="panel-body">
				<div class="row">

					<div class=" col-md-9 col-lg-9 ">
						<table class="table table-user-information">
							<tbody>
								<tr>
									<td>First Name</td>
									<td>${loginvo.fname}</td>
								</tr>
								<tr>
									<td>Last Name</td>
									<td>${loginvo.lname}</td>
								</tr>
								<tr>
									<td>Email</td>
									<td>${loginvo.email}</td>
								</tr>

								<tr>
								<tr>
									<td>City</td>
									<td>${loginvo.city}</td>
								</tr>
								<tr>
									<td>State</td>
									<td>${loginvo.state}</td>
								</tr>
								<tr>
									<td>Country</td>
									<td>${loginvo.cntry}</td>
								</tr>
								<!-- <td>Phone Number</td>
                        <td>123-4567-890(Landline)<br><br>555-4567-890(Mobile)
                        </td> -->

								</tr>

							</tbody>
						</table>

						<button data-toggle="modal" data-target="#myModal"
							class="btn btn-primary">Edit</button>
						<!-- <a href="#" class="btn btn-primary">Team Sales Performance</a>  -->
					</div>
				</div>
			</div>


		</div>
		</div>
		<!-- Modal -->
		<div class="modal fade" id="myModal" role="dialog">
			<div class="modal-dialog">

				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">×</button>
						<h4 class="modal-title">Edit Profile</h4>
					</div>
					<div class="modal-body">
						<form:form role="form" action="saveuser" method="post"
							commandName="loginvo">
							<div class="form-group">
								<label>First Name</label>
								<form:input type="text" path="fname" class="form-control"/>
							</div>
							<div class="form-group">
								<label>Last Name</label>
								<form:input type="text" path="lname" class="form-control"/>
							</div>
							<div class="form-group">
								<label>City</label>
								<form:input type="text" path="city" class="form-control"/>
							</div>
							<div class="form-group">
								<label>State</label>
								<form:input type="text" path="state" class="form-control"/>
							</div>
							<div class="form-group">
								<label>Country</label>
								<form:input type="text" path="cntry"  class="form-control"/>
							</div>
							<button type="submit" class="btn btn-block">
								Update
							</button>
						</form:form>
					</div>

				</div>
			</div>
		</div>

	</div>



	<script src="bootstrap/js/jquery-3.1.1.js">
		
	</script>

	<script src="bootstrap/js/bootstrap.js">
		
	</script>

	<script src="bootstrap/js/jquery-ui.js"></script>
</body>
</html>