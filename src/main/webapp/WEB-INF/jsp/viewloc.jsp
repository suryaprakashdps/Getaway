<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="org.apache.commons.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="bootstrap/css/styles.css" rel="stylesheet" />
<link href="bootstrap/css/bootstrap.css" rel="stylesheet" />

</head>
<body>
	<div class="container-fluid  bg-grey">

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

		<br/><br/><br/>

		<div class="row">
		
			<div class="col-lg-9">
			<label><h3 class="text-center">${displayvo.locname}</h3></label>
				<marquee scrollamount="5" direction="left" behavior="alternate">


					<img alt="img"
						src="data:image/jpeg;base64,${displayvo.base64imagefile}"
						align="left" width="600" height="400">
				</marquee>
				</div>
				</div>
				<div class="row">
				<div class="col-lg-9">
				<br/><br/>
				<label><h3>Description</h3></label>
				<p>${displayvo.desc}</p>
				
				</div>
				
</div>



</body>
</html>