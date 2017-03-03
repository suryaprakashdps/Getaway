<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
 <%@ page import="java.lang.*" %>
    <%@ page import="java.io.*" %>
    <%@ page import="java.util.*" %>
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
	

			</ul>
		</div>
	</div>
	</nav>




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

<br/><br/><br/>

<div div id="Search" class="jumbotron text-center container">
			<h2>Shoot your spot</h2>

			<form:form role="form" action="searchspot.do" method="post" commandName="locvo">
				<div class="form-group">
					<div class="row">
						<div class="col-lg-4 col-lg-offset-4">

							<form:select type="text" class="form-control" path="state">
								<form:option value="AL">Alabama</form:option>
								<form:option value="AK">Alaska</form:option>
								<form:option value="AZ">Arizona
								</form:option>
								<form:option value="AR">Arkansas</form:option>
								<form:option value="CA">California
								</form:option>
								<form:option value="CO">Colorado</form:option>
								<form:option value="CT">Connecticut
								</form:option>
								<form:option value="DE">Delaware</form:option>
								<form:option value="DC">District Of Columbia
								</form:option>
								<form:option value="FL">Florida</form:option>
								<form:option value="GA">Georgia
								</form:option>
								<form:option value="HI">Hawaii</form:option>
								<form:option value="ID">Idaho
								</form:option>
								<form:option value="IL">Illinois</form:option>
								<form:option value="IN">Indiana
								</form:option>
								<form:option value="IA">Iowa</form:option>
								<form:option value="KS">Kansas
								</form:option>
								<form:option value="KY">Kentucky</form:option>
								<form:option value="LA">Louisiana
								</form:option>
								<form:option value="ME">Maine</form:option>
								<form:option value="MD">Maryland
								</form:option>
								<form:option value="MA">Massachusetts</form:option>
								<form:option value="MI">Michigan
								</form:option>
								<form:option value="MN">Minnesota</form:option>
								<form:option value="MS">Mississippi
								</form:option>
								<form:option value="MO">Missouri</form:option>
								<form:option value="MT">Montana
								</form:option>
								<form:option value="NE">Nebraska</form:option>
								<form:option value="NV">Nevada
								</form:option>
								<form:option value="NH">New Hampshire</form:option>
								<form:option value="NJ">New Jersey
								</form:option>
								<form:option value="NM">New Mexico</form:option>
								<form:option value="NY">New York
								</form:option>
								<form:option value="NC">North Carolina</form:option>
								<form:option value="ND">North Dakota
								</form:option>
								<form:option value="OH">Ohio</form:option>
								<form:option value="OK">Oklahoma
								</form:option>
								<form:option value="OR">Oregon</form:option>
								<form:option value="PA">Pennsylvania
								</form:option>
								<form:option value="RI">Rhode Island</form:option>
								<form:option value="SC">South Carolina
								</form:option>
								<form:option value="SD">South Dakota</form:option>
								<form:option value="TN">Tennessee
								</form:option>
								<form:option value="TX">Texas</form:option>
								<form:option value="UT">Utah
								</form:option>
								<form:option value="VT">Vermont</form:option>
								<form:option value="VA">Virginia
								</form:option>
								<form:option value="WA">Washington</form:option>
								<form:option value="WV">West Virginia
								</form:option>
								<form:option value="WI">Wisconsin</form:option>
								<form:option value="WY">Wyoming
								</form:option>
							</form:select>
						</div>
					</div>
				</div>
				<div class="form-group">
					<button type="submit" class="btn btn-success">Search</button>
					<button formaction="addloc.do" class="btn">Add Location</button>
					<button formaction="displayloc.do" class="btn">View Location</button>
				</div>

			</form:form>

		</div>




	<%-- <div id="Search" class="container">

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
	</div> --%>
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