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
	</br></br></br>
	<h3 class="text-center">Newyork</h3>

	<div class="container">
		<script src="bootstrap/js/jquery-3.1.1.js">
			
		</script>

		<script src="bootstrap/js/bootstrap.js">
			
		</script>

		<script src="bootstrap/js/jquery-ui.js"></script>

		<br>


		<div class="row">
			<div class="col-lg-6">
				<marquee scrollamount="5" direction="left" behavior="alternate">


					<img src="http://data.whicdn.com/images/52336099/original.jpg"
						align="left" width="750" height="300">
				</marquee>
				
				

			</div>
			<div class="col-lg-6">


			

					<p>The City of New York, often called New York City (NYC) or
						simply New York, is the most populous city in the United States.
						New York City is also the most densely populated major city in the
						United States. Located at the southern tip of the state of New
						York, the city is the center of the New York metropolitan area,
						one of the most populous urban agglomerations in the world.
						Situated on one of the world's largest natural harbors,New York
						City consists of five boroughs, each of which is a separate county
						of New York State. The five boroughs – Brooklyn, Queens,
						Manhattan, The Bronx, and Staten Island – were consolidated into a
						single city in 1898. Places to visit: Midtown Manhattan, Times
						Square, the Unisphere in Queens, the Brooklyn Bridge, Lower
						Manhattan with One World Trade Center, Central Park, the
						headquarters of the United Nations, and the Statue of Liberty</p>
				

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




		<%-- <div class="row">
			<div class="col-sm-10 col-sm-offset-1" id="logout">
				<div class="page-header">
					<h3 class="reviews">Leave your comment</h3>
					<div class="logout">
						<button class="btn btn-default btn-circle text-uppercase"
							type="button" onclick="$('#logout').hide(); $('#login').show()">
							<span class="glyphicon glyphicon-off"></span> Logout
						</button>
					</div>
				</div>
				<div class="comment-tabs">
					<ul class="nav nav-tabs" role="tablist">
						<li class="active"><a href="#comments-logout" role="tab"
							data-toggle="tab"><h4 class="reviews text-capitalize">Comments</h4></a></li>
						<li><a href="#add-comment" role="tab" data-toggle="tab"><h4
									class="reviews text-capitalize">Add comment</h4></a></li>
						<li><a href="#account-settings" role="tab" data-toggle="tab"><h4
									class="reviews text-capitalize">Account settings</h4></a></li>
					</ul>
					<div class="tab-content">
						<div class="tab-pane active" id="comments-logout">
							<ul class="media-list">
								<li class="media"><a class="pull-left" href="#"> <img
										class="media-object img-circle"
										src="https://s3.amazonaws.com/uifaces/faces/twitter/dancounsell/128.jpg"
										alt="profile">
								</a>
									<div class="media-body">
										<div class="well well-lg">
											<h4 class="media-heading text-uppercase reviews">Marco</h4>
											<ul class="media-date text-uppercase reviews list-inline">
												<li class="dd">22</li>
												<li class="mm">09</li>
												<li class="aaaa">2014</li>
											</ul>
											<p class="media-comment">Great snippet! Thanks for
												sharing.</p>
											<a class="btn btn-info btn-circle text-uppercase" href="#"
												id="reply"><span class="glyphicon glyphicon-share-alt"></span>
												Reply</a> <a class="btn btn-warning btn-circle text-uppercase"
												data-toggle="collapse" href="#replyOne"><span
												class="glyphicon glyphicon-comment"></span> 2 comments</a>
										</div>
									</div>
									<div class="collapse" id="replyOne">
										<ul class="media-list">
											<li class="media media-replied"><a class="pull-left"
												href="#"> <img class="media-object img-circle"
													src="https://s3.amazonaws.com/uifaces/faces/twitter/ManikRathee/128.jpg"
													alt="profile">
											</a>
												<div class="media-body">
													<div class="well well-lg">
														<h4 class="media-heading text-uppercase reviews">
															<span class="glyphicon glyphicon-share-alt"></span> The
															Hipster
														</h4>
														<ul class="media-date text-uppercase reviews list-inline">
															<li class="dd">22</li>
															<li class="mm">09</li>
															<li class="aaaa">2014</li>
														</ul>
														<p class="media-comment">Nice job Maria.</p>
														<a class="btn btn-info btn-circle text-uppercase" href="#"
															id="reply"><span
															class="glyphicon glyphicon-share-alt"></span> Reply</a>
													</div>
												</div></li>
											<li class="media media-replied" id="replied"><a
												class="pull-left" href="#"> <img
													class="media-object img-circle"
													src="https://pbs.twimg.com/profile_images/442656111636668417/Q_9oP8iZ.jpeg"
													alt="profile">
											</a>
												<div class="media-body">
													<div class="well well-lg">
														<h4 class="media-heading text-uppercase reviews">
															<span class="glyphicon glyphicon-share-alt"></span> Mary
														</h4>
														</h4>
														<ul class="media-date text-uppercase reviews list-inline">
															<li class="dd">22</li>
															<li class="mm">09</li>
															<li class="aaaa">2014</li>
														</ul>
														<p class="media-comment">Thank you Guys!</p>
														<a class="btn btn-info btn-circle text-uppercase" href="#"
															id="reply"><span
															class="glyphicon glyphicon-share-alt"></span> Reply</a>
													</div>
												</div></li>
										</ul>
									</div></li>
								<li class="media"><a class="pull-left" href="#"> <img
										class="media-object img-circle"
										src="https://s3.amazonaws.com/uifaces/faces/twitter/kurafire/128.jpg"
										alt="profile">
								</a>
									<div class="media-body">
										<div class="well well-lg">
											<h4 class="media-heading text-uppercase reviews">Nico</h4>
											<ul class="media-date text-uppercase reviews list-inline">
												<li class="dd">22</li>
												<li class="mm">09</li>
												<li class="aaaa">2014</li>
											</ul>
											<p class="media-comment">I'm looking for that. Thanks!</p>
											<div class="embed-responsive embed-responsive-16by9">
												<iframe class="embed-responsive-item"
													src="//www.youtube.com/embed/80lNjkcp6gI" allowfullscreen></iframe>
											</div>
											<a class="btn btn-info btn-circle text-uppercase" href="#"
												id="reply"><span class="glyphicon glyphicon-share-alt"></span>
												Reply</a>
										</div>
									</div></li>
								<li class="media"><a class="pull-left" href="#"> <img
										class="media-object img-circle"
										src="https://s3.amazonaws.com/uifaces/faces/twitter/lady_katherine/128.jpg"
										alt="profile">
								</a>
									<div class="media-body">
										<div class="well well-lg">
											<h4 class="media-heading text-uppercase reviews">Kriztine</h4>
											<ul class="media-date text-uppercase reviews list-inline">
												<li class="dd">22</li>
												<li class="mm">09</li>
												<li class="aaaa">2014</li>
											</ul>
											<p class="media-comment">Yehhhh... Thanks for sharing.</p>
											<a class="btn btn-info btn-circle text-uppercase" href="#"
												id="reply"><span class="glyphicon glyphicon-share-alt"></span>
												Reply</a> <a class="btn btn-warning btn-circle text-uppercase"
												data-toggle="collapse" href="#replyTwo"><span
												class="glyphicon glyphicon-comment"></span> 1 comment</a>
										</div>
									</div>
									<div class="collapse" id="replyTwo">
										<ul class="media-list">
											<li class="media media-replied"><a class="pull-left"
												href="#"> <img class="media-object img-circle"
													src="https://s3.amazonaws.com/uifaces/faces/twitter/jackiesaik/128.jpg"
													alt="profile">
											</a>
												<div class="media-body">
													<div class="well well-lg">
														<h4 class="media-heading text-uppercase reviews">
															<span class="glyphicon glyphicon-share-alt"></span> Lizz
														</h4>
														<ul class="media-date text-uppercase reviews list-inline">
															<li class="dd">22</li>
															<li class="mm">09</li>
															<li class="aaaa">2014</li>
														</ul>
														<p class="media-comment">Classy!</p>
														<a class="btn btn-info btn-circle text-uppercase" href="#"
															id="reply"><span
															class="glyphicon glyphicon-share-alt"></span> Reply</a>
													</div>
												</div></li>
										</ul>
									</div></li>
							</ul>
						</div>
						<div class="tab-pane" id="add-comment">
							<form action="#" method="post" class="form-horizontal"
								id="commentForm" role="form">
								<div class="form-group">
									<label for="email" class="col-sm-2 control-label">Comment</label>
									<div class="col-sm-10">
										<textarea class="form-control" name="addComment"
											id="addComment" rows="5"></textarea>
									</div>
								</div>
								<div class="form-group">
									<label for="uploadMedia" class="col-sm-2 control-label">Upload
										media</label>
									<div class="col-sm-10">
										<div class="input-group">
											<div class="input-group-addon">http://</div>
											<input type="text" class="form-control" name="uploadMedia"
												id="uploadMedia">
										</div>
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-offset-2 col-sm-10">
										<button class="btn btn-success btn-circle text-uppercase"
											type="submit" id="submitComment">
											<span class="glyphicon glyphicon-send"></span> Summit comment
										</button>
									</div>
								</div>
							</form>
						</div>
						<div class="tab-pane" id="account-settings">
							<form action="#" method="post" class="form-horizontal"
								id="accountSetForm" role="form">
								<div class="form-group">
									<label for="avatar" class="col-sm-2 control-label">Avatar</label>
									<div class="col-sm-10">
										<div class="custom-input-file">
											<label class="uploadPhoto"> Edit <input type="file"
												class="change-avatar" name="avatar" id="avatar">
											</label>
										</div>
									</div>
								</div>
								<div class="form-group">
									<label for="name" class="col-sm-2 control-label">Name</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" name="name" id="name"
											placeholder="Vilma palma">
									</div>
								</div>
								<div class="form-group">
									<label for="nickName" class="col-sm-2 control-label">Nick
										name</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" name="nickName"
											id="nickName" placeholder="Vilma">
									</div>
								</div>
								<div class="form-group">
									<label for="email" class="col-sm-2 control-label">Email</label>
									<div class="col-sm-10">
										<input type="email" class="form-control" name="email"
											id="email" placeholder="vilma@mail.com">
									</div>
								</div>
								<div class="form-group">
									<label for="newPassword" class="col-sm-2 control-label">New
										password</label>
									<div class="col-sm-10">
										<input type="password" class="form-control" name="newPassword"
											id="newPassword">
									</div>
								</div>
								<div class="form-group">
									<label for="confirmPassword" class="col-sm-2 control-label">Confirm
										password</label>
									<div class="col-sm-10">
										<input type="password" class="form-control"
											name="confirmPassword" id="confirmPassword">
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-offset-2 col-sm-10">
										<button class="btn btn-primary btn-circle text-uppercase"
											type="submit" id="submit">Save changes</button>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="page-header text-center">
			<h3 class="reviews">
				<span class="glyphicon glyphicon-magnet"></span> Uicomments by <a
					href="https://twitter.com/maridlcrmn">maridlcrmn</a>
			</h3>
		</div>
		<div class="notes text-center">
			<small>Image credits: uifaces.com</small>
		</div>
	</div>
 --%>
</body>
</html>
