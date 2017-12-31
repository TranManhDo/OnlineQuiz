<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Change Password</title>
<link href="Bootstrap/css/bootstrap-theme.min.css" rel="stylesheet">
<link href="Bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link
	href="FONTS/font-awesome-4.7.0/font-awesome-4.7.0/css/font-awesome.min.css"
	rel="stylesheet">
<link href="CSS/style.css" rel="stylesheet" type="text/css">
<link href="CSS/Student_ChangePass.css" rel="stylesheet" type="text/css">


<script src="https://cdn.jsdelivr.net/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/jquery.validation/1.15.1/jquery.validate.min.js"></script>
<script>
	$(function() {
		// Initialize form validation on the registration form.
		// It has the name attribute "registration"
		$('#btnsave').click(function(){
			$('#changepass')
			.validate(
					{
						// Specify validation rules
						rules : {
							// The key name on the left side is the name attribute
							// of an input field. Validation rules are defined
							// on the right side
							currentpassword : "required",
							newpassword : {
								required : true,
								minlength : 5
							},
							cfpassword : {
								required : true,
								minlength : 5
							}
						},
						// Specify validation error messages
						messages : {
							currentpassword : "Please enter current password",
							
							newpassword : {
								required : "Please provide a password",
								minlength : "Your password must be at least 5 characters long"
							},
							cfpassword : {
								required : "Please confirm password",
								minlength : "Your password must be at least 5 characters long"
							},
						},
						// Make sure the form is submitted to the destination defined
						// in the "action" attribute of the form when valid
						submitHandler : function(form) {
							form.submit();
						}
					});
		});
		
	});
</script>

</head>
<body>
	<header>
	<div class="row">
		<div class="logo">
			<img src="image/logo.png">
		</div>
		<ul class="main-nav">
			<li><a href="index.jsp">HOME</a></li>
			<li><a href="">ABOUT</a></li>
			<li><a href="">HELP</a></li>
			<li><a href="login.jsp">LOGIN</a></li>
			<li><a href="register.jsp">REGISTER</a></li>
		</ul>
	</div>
	<div class="hero">
		<h1>
			WELCOME TO ONLINE QUIZ <br> HCMC UNIVERSITY OF TECHNOLOGY AND
			EDUCATION
		</h1>

	</div>
	</header>
	<div class="container-fluid display-table">
		<div class="row display-table-row">
			<div
				class="col-md-2 col-sm-1 hidden-xs display-table-cell v-align box"
				id="navigation">
				<div class="navi">
					<ul>
						<li><a href="index.jsp"><i class="fa fa-home"
								aria-hidden="true"></i><span class="hidden-xs hidden-sm">Home</span></a></li>

						<li class="active"><a href="Manager_Exam1.jsp"><i
								class="fa fa-flag-o" aria-hidden="true"></i><span
								class="hidden-xs hidden-sm">Create Question </span></a></li>
						<li><a href="QLDT_ChangePass.jsp"><i class="fa fa-key"
								aria-hidden="true"></i> <span class="hidden-xs hidden-sm">Change
									Password </span></a></li>
						<li><a href="login.jsp"><i class="fa fa-sign-out"
								aria-hidden="true"></i><span class="hidden-xs hidden-sm">Sign
									Out </span></a></li>
					</ul>
				</div>
			</div>
			<div class="col-md-10 col-sm-11 display-table-cell v-align">
				<div class="row">

					<div class="col-md-7">
						<nav class="navbar-default pull-left">
						<div class="navbar-header">
							<button type="button" class="navbar-toggle collapsed"
								data-toggle="offcanvas" data-target="#side-menu"
								aria-expanded="false">
								<span class="sr-only">Toggle navigation</span> <span
									class="icon-bar"></span> <span class="icon-bar"></span> <span
									class="icon-bar"></span>
							</button>
						</div>
						</nav>
						<!--  
						 <div class="search hidden-xs hidden-sm">
							<input type="text" placeholder="Search" id="search">
						 </div>
						 -->


					</div>
					<div class="col-md-5">
						<div class="header-rightside">
							<ul class="list-inline header-top pull-right">

								<li><a href="#"><i class="fa fa-envelope"
										aria-hidden="true"></i></a></li>
								<li><a href="#" class="icon-info"> <i
										class="fa fa-bell" aria-hidden="true"></i> <span
										class="label label-primary">3</span>
								</a></li>
								<li class="dropdown"><a href="#" class="dropdown-toggle"
									data-toggle="dropdown"><img
										src="http://jskrishna.com/work/merkury/images/user-pic.jpg"
										alt="Admin"> <b class="caret"></b></a>
									<ul class="dropdown-menu">
										<li>
											<div class="navbar-content">
												<span>JS Krishna</span>
												<p class="text-muted small">me@jskrishna.com</p>
												<div class="divider"></div>
												<a href="#" class="view btn-sm active">View Profile</a>
											</div>
										</li>
									</ul></li>
							</ul>
						</div>
					</div>
					<div class="container">
						<br> 

						<section class="features">
						<h3 class="text-center">CHANGE PASSWORD</h3>
						<div class="container">
							<form action="" id="changepass">
								<label for="currentpassword"> Current Password</label> <input type="password" name="currentpassword" id="currentpassword" placeholder="&#9679;&#9679;&#9679;&#9679;&#9679;" /> 
								<label for="newpassword">New Password</label> <input type="password" name="newpassword" id="newpassword" placeholder="&#9679;&#9679;&#9679;&#9679;&#9679;" /> 
								<label for="cfpassword"> Confirm Password</label> <input type="password" name="cfpassword" id="cfpassword" placeholder="&#9679;&#9679;&#9679;&#9679;&#9679;" />
								<button type="submit" id = "btnsave">SAVE</button>
								<button type="submit" id = "btncancel" onclick="location.href='QLDT_ChangePass.jsp';">CANCEL</button>

							</form>
						</div>
						</section>

					</div>

				</div>

				<div class="user-dashboard">

					<div class="row">
						<div class="col-md-5 col-sm-5 col-xs-12 gutter"></div>
						<div class="col-md-7 col-sm-7 col-xs-12 gutter"></div>
					</div>
				</div>
			</div>
		</div>

	</div>


	<section class="school">
	<ul class="school-showcase">
		<li><figure class="school-photo"> <img
				src="image/hcmute.jpg"> </figure></li>
		<li><figure class="school-photo"> <img
				src="image/hcmute1.jpg"> </figure></li>
		<li><figure class="school-photo"> <img
				src="image/hcmute2.jpg"> </figure></li>
		<li><figure class="school-photo"> <img
				src="image/hcmute3.jpg"> </figure></li>

	</ul>
	</section>
	<section class="navbar-bottom">
	<h3 class="text-center">CONTACT US</h3>
	<div class="container">
		<div class="row">
			<div class="col-md-3">
				<p>Copyright @ 2017 HCMUTE-All right reserved</p>
				<p>Mobile:+1247171789</p>
			</div>
		</div>
	</div>
	</section>

</body>
</html>