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
	
	<br/>
	<br/>
	<br/>

	<div class="jumbotron text-center">
		<h2>Shoot your spot</h2>
		
		<form:form role="form" commandName="locvo">
			<div class="form-group">
			<div class="row">
		<div class="col-lg-4 col-lg-offset-4">
				<form:select type="text" class="form-control" path="state" >
				<form:option value="Minnesota">Minnesota</form:option>
				<form:option value="Chicago">Chicago</form:option>
				
				</form:select>
				</div>
				</div>
				</div>
				<div class="form-group">
					<button type="button" class="btn btn-primary">Search</button>
					<button type="button" class="btn btn-primary">Add Location</button>
				</div>
			
		</form:form>
		
	</div>
	
	<h2>Locations</h2><br>
  <h4>What we have created</h4>
  <div class="row text-center">
    <div class="col-sm-4">
      <div class="thumbnail">
        <img src="assets/img/paris.jpg" alt="assets/img/Paris" width="400" height="300">
        <p><strong>Chicago</strong></p>
        <p>Yes, we built Chicago</p>
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