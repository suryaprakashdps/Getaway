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
	width: 25%;
}
</style>
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

		<br />
		<br />
		<br />
		<br />
		<br />
		<div class="row">
			<div class="col-lg-8 panel well col-lg-push-2">
				<div class="panel-heading">
					<h4>Add Location</h4>
				</div>
				<form:form role="form" action="saveloc.do" method="post"
					enctype="multipart/form-data" commandName="locvo">
					<div class="form-group">
						<label>Location Name</label>
						<form:input type="text" path="locname" class="form-control" />
					</div>
					<div class="form-group">
						<label>State</label>
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
					<div class="form-group">
						<label>Description</label>
						<form:textarea type="text" path="desc" class="form-control" />
					</div>
					<div class="form-group">
						<label>Image</label>
						<div class="input-group">
							<span class="input-group-btn"> <span
								class="btn btn-default btn-file"> Browse… <input
									type="file" id="imgInp" name="file" />
							</span>
							</span>
							<form:input type="text" path="locimgname" class="form-control"
								readonly="true" />
						</div>
						<br /> <br /> <img id='img-upload' />
					</div>

					<button type="submit" class="btn btn-success">Add</button>
					<button class="btn btn-danger">Cancel</button>

				</form:form>

			</div>
		</div>


	</div>

	<script>
		$(document).ready(
				function() {
					$(document).on(
							'change',
							'.btn-file :file',
							function() {
								var input = $(this), label = input.val()
										.replace(/\\/g, '/')
										.replace(/.*\//, '');
								input.trigger('fileselect', [ label ]);
							});

					$('.btn-file :file').on(
							'fileselect',
							function(event, label) {

								var input = $(this).parents('.input-group')
										.find(':text'), log = label;

								if (input.length) {
									input.val(log);
								} else {
									if (log)
										alert(log);
								}

							});
					function readURL(input) {
						if (input.files && input.files[0]) {
							var reader = new FileReader();

							reader.onload = function(e) {
								$('#img-upload').attr('src', e.target.result);
							}

							reader.readAsDataURL(input.files[0]);
						}
					}

					$("#imgInp").change(function() {
						readURL(this);
					});
				});
	</script>

</body>
</html>