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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="bootstrap/css/styles.css" rel="stylesheet" />
<link href="bootstrap/css/bootstrap.css" rel="stylesheet" />

<style>
.btn-file {
	position: relative;
	overflow: hidden;
}

.btn-file input[type=file] {
	position: absolute;
	top: 0;
	right: 0;
	min-width: 100%;
	min-height: 100%;
	font-size: 100px;
	text-align: right;
	filter: alpha(opacity = 0);
	opacity: 0;
	outline: none;
	background: white;
	cursor: inherit;
	display: block;
}

#img-upload {
	width: 50%;
}
</style>
</head>
<body>

	<div class="container-fluid text-center bg-grey">

		<script src="bootstrap/js/jquery-3.1.1.js">
			
		</script>

		<script src="bootstrap/js/bootstrap.js">
			
		</script>

		<script src="bootstrap/js/jquery-ui.js"></script>


		<nav class="navbar navbar-inverse navbar-fixed-top">
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


					<li><a href="/GetAway"><span
							class="glyphicon glyphicon-log-out"></span>Logout</a></li>

				</ul>
			</div>
		</div>
		</nav>

		<br /> <br /> <br />

		<div class="jumbotron text-center">
			<h2>Shoot your spot</h2>

			<form:form role="form" commandName="locvo">
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
				</div>

			</form:form>

		</div>



	</div>

	<h2>Locations</h2>
	<br>
	<h4>What we have created</h4>
	<div class="row text-center">
		<div class="col-sm-4">
			<div class="thumbnail">
				<img src="assets/img/paris.jpg" alt="assets/img/Paris" width="400"
					height="300">
				<p>
					<strong>Chicago</strong>
				</p>
				<p>Yes, we built Chicago</p>
			</div>
		</div>
		<div class="col-sm-4">
			<div class="thumbnail">
				<img src="assets/img/newyork.jpg" alt="New York" width="400"
					height="300">
				<p>
					<strong>New York</strong>
				</p>
				<p>We built New York</p>
			</div>
		</div>
		<div class="col-sm-4">
			<div class="thumbnail">
				<img src="assets/img/sanfran.jpg" alt="San Francisco" width="400"
					height="300">
				<p>
					<strong>San Francisco</strong>
				</p>
				<p>Yes, San Fran is ours</p>
			</div>
		</div>
	</div>

	</div>

		<div class="row text-center">
		<c:forEach items="${placevo}" var="item">

			<div class="col-sm-4">
				<div class="thumbnail">
					<img src="" width="400" height="300">
					<spring:url value="/{id}/viewplace.do" var="viewurl">
						<spring:param name="id" value="${item.idplace}"></spring:param>
					</spring:url>
					<a href="${fn:escapeXml(viewurl)}">
						<p>
							<strong><c:out value="${item.desc}" /></strong>
						</p>
					</a>
				</div>
			</div>
				</c:forEach>
		</div>

</body>
</html>