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
<link href="<c:url value="/bootstrap/css/styles.css"/>" rel="stylesheet" />
<link href="<c:url value="/bootstrap/css/bootstrap.css"/>" rel="stylesheet" />
<link href="<c:url value="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css"/>" rel="stylesheet" />

<style>

/*******************************************
  = LESS
*******************************************/

/* LESS - Mixins */
.clearfix () { &:before , &:after {
       content : "";
	display: table;
}

&
:after {
	clear: both;
}

}
.transition () {
	-webkit-transition: all .2s ease-in-out;
	-moz-transition: all .2s ease-in-out;
	-o-transition: all .2s ease-in-out;
	transition: all .2s ease-in-out;
}

/*******************************************
  = TYPOGRAPHY
*******************************************/
html {
	font-size: 62.5%;
}

/*******************************************
  = LAYOUT
*******************************************/
* {
	-webit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
	margin: 0;
	padding: 0;
	border: 0;
}

/*******************************************
  = RATING
*******************************************/

/* RATING - Form */
.rating-form {
	margin-top: 40px;
}

/* RATING - Form - Group */
.rating-form .form-group {
	position: relative;
	border: 0;
}

/* RATING - Form - Legend */
.rating-form .form-legend {
	display: none;
	margin: 0;
	padding: 0;
	font-size: 20px;
	font-size: 2rem;
	/*background: green;*/
}

/* RATING - Form - Item */
.rating-form .form-item {
	position: relative;
	margin: auto;
	width: 300px;
	text-align: center;
	direction: rtl;
	/*background: green;*/
}

.rating-form .form-legend+.form-item {
	padding-top: 10px;
}

.rating-form input[type='radio'] {
	position: absolute;
	left: -9999px;
}

/* RATING - Form - Label */
.rating-form label {
	display: inline-block;
	cursor: pointer;
}

.rating-form .rating-star {
	display: inline-block;
	position: relative;
}

.rating-form input[type='radio']+label:before {
	content: attr(data-value);
	position: absolute;
	right: 30px;
	top: 83px;
	font-size: 30px;
	font-size: 3rem;
	opacity: 0;
	direction: ltr;
	.
	transition
	();
}

.rating-form input[type='radio']:checked+label:before {
	right: 25px;
	opacity: 1;
}

.rating-form input[type='radio']+label:after {
	content: "/ 5";
	position: absolute;
	right: 5px;
	top: 96px;
	font-size: 16px;
	font-size: 1.6rem;
	opacity: 0;
	direction: ltr;
	.
	transition
	();
}

.rating-form input[type='radio']:checked+label:after {
	/*right: 5px;*/
	opacity: 1;
}

.rating-form label .fa {
	font-size: 60px;
	font-size: 6rem;
	line-height: 60px;
	.
	transition
	();
}

.rating-form label .fa-star-o {
	
}

.rating-form label:hover .fa-star-o, .rating-form label:focus .fa-star-o,
	.rating-form label:hover ~ label .fa-star-o, .rating-form label:focus 
	~ label .fa-star-o, .rating-form input[type='radio']:checked ~ label .fa-star-o
	{
	opacity: 0;
}

.rating-form label .fa-star {
	position: absolute;
	left: 0;
	top: 0;
	opacity: 0;
}

.rating-form label:hover .fa-star, .rating-form label:focus .fa-star,
	.rating-form label:hover ~ label .fa-star, .rating-form label:focus ~
	label .fa-star, .rating-form input[type='radio']:checked ~ label .fa-star
	{
	opacity: 1;
}

.rating-form input[type='radio']:checked ~ label .fa-star {
	color: gold;
}

.rating-form .ir {
	position: absolute;
	left: -9999px;
}

/* RATING - Form - Action */
.rating-form .form-action {
	opacity: 0;
	position: absolute;
	left: 5px;
	bottom: -40px;
	.
	transition
	();
}

.rating-form input[type='radio']:checked ~ .form-action {
	cursor: pointer;
	opacity: 1;
}

.rating-form .btn-reset {
	display: inline-block;
	margin: 0;
	padding: 4px 10px;
	border: 0;
	font-size: 10px;
	font-size: 1rem;
	background: #fff;
	color: #333;
	cursor: auto;
	border-radius: 5px;
	outline: 0;
	.
	transition
	();
}

.rating-form .btn-reset:hover, .rating-form .btn-reset:focus {
	background: gold;
}

.rating-form input[type='radio']:checked ~ .form-action .btn-reset {
	cursor: pointer;
}

/* RATING - Form - Output */
.rating-form .form-output {
	display: none;
	position: absolute;
	right: 15px;
	bottom: -45px;
	font-size: 30px;
	font-size: 3rem;
	opacity: 0;
	.
	transition
	();
}

.no-js .rating-form .form-output {
	right: 5px;
	opacity: 1;
}

.rating-form input[type='radio']:checked ~ .form-output {
	right: 5px;
	opacity: 1;
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

	</div>
	
	

	<div class="container">
		<script src="bootstrap/js/jquery-3.1.1.js">
			
		</script>

		<script src="bootstrap/js/bootstrap.js">
			
		</script>

		<script src="bootstrap/js/jquery-ui.js"></script>

		<h3 class="text-center">${displayvo.locname}</h3>
		<br/>


		<div class="row">
			<div class="col-lg-6">
				<marquee scrollamount="5" direction="left" behavior="alternate">


					<img alt="img"
						src="data:image/jpeg;base64,${displayvo.base64imagefile}"
						align="left" width="750" height="300">
				</marquee>
				
				

			</div>
			<div class="col-lg-6">


			

					<h3>Description</h3>
					<p>${displayvo.desc}</p>
				

				<form class="rating-form" action="#" method="post"
					name="rating-movie">
					<fieldset class="form-group">

						<legend class="form-legend">Rating:</legend>

						<div class="form-item">

							<input id="rating-5" name="rating" type="radio" value="5" /> <label
								for="rating-5" data-value="5"> <span class="rating-star">
									<i class="fa fa-star-o"></i> <i class="fa fa-star"></i>
							</span> <span class="ir">5</span>
							</label> <input id="rating-4" name="rating" type="radio" value="4" /> <label
								for="rating-4" data-value="4"> <span class="rating-star">
									<i class="fa fa-star-o"></i> <i class="fa fa-star"></i>
							</span> <span class="ir">4</span>
							</label> <input id="rating-3" name="rating" type="radio" value="3" /> <label
								for="rating-3" data-value="3"> <span class="rating-star">
									<i class="fa fa-star-o"></i> <i class="fa fa-star"></i>
							</span> <span class="ir">3</span>
							</label> <input id="rating-2" name="rating" type="radio" value="2" /> <label
								for="rating-2" data-value="2"> <span class="rating-star">
									<i class="fa fa-star-o"></i> <i class="fa fa-star"></i>
							</span> <span class="ir">2</span>
							</label> <input id="rating-1" name="rating" type="radio" value="1" /> <label
								for="rating-1" data-value="1"> <span class="rating-star">
									<i class="fa fa-star-o"></i> <i class="fa fa-star"></i>
							</span> <span class="ir">1</span>
							</label>

							<div class="form-action">
								<input class="btn-reset" type="reset" value="Reset" />
							</div>

							<div class="form-output">? / 5</div>

						</div>


					</fieldset>
				</form>
			</div>
		</div>
		
		<!-- begin wwww.htmlcommentbox.com -->
				<div id="HCB_comment_box">
					<a href="http://www.htmlcommentbox.com">Widget</a> is loading
					comments...
				</div>
				<link rel="stylesheet" type="text/css"
					href="//www.htmlcommentbox.com/static/skins/bootstrap/twitter-bootstrap.css?v=0" />
				<script type="text/javascript" id="hcb">
					/*<!--*/if (!window.hcb_user) {
						hcb_user = {};
					}
					(function() {
						var s = document.createElement("script"), l = hcb_user.PAGE
								|| ("" + window.location).replace(/'/g, "%27"), h = "//www.htmlcommentbox.com";
						s.setAttribute("type", "text/javascript");
						s
								.setAttribute(
										"src",
										h
												+ "/jread?page="
												+ encodeURIComponent(l)
														.replace("+", "%2B")
												+ "&mod=%241%24wq1rdBcg%24lKpbtJLHxQ3KKTz1vKu6m%2F"
												+ "&opts=16862&num=10&ts=1488494619770");
						if (typeof s != "undefined")
							document.getElementsByTagName("head")[0]
									.appendChild(s);
					})(); /*-->*/
				</script>
				<!-- end www.htmlcommentbox.com -->
		
		</div>




</body>
</html>
