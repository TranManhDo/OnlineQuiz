<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Subject</title>
<link href="Bootstrap/css/bootstrap-theme.min.css" rel="stylesheet">
<link href="Bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link
	href="FONTS/font-awesome-4.7.0/font-awesome-4.7.0/css/font-awesome.min.css"
	rel="stylesheet">
<link href="CSS/style.css" rel="stylesheet" type="text/css">
<link href="CSS/admin-user.css" rel="stylesheet" type="text/css">
<link href="CSS/AddAdmin_User.css" rel="stylesheet" type="text/css">

<script src="https://cdn.jsdelivr.net/jquery/1.12.4/jquery.min.js"></script>

<script
	src="https://cdn.jsdelivr.net/jquery.validation/1.15.1/jquery.validate.min.js"></script>
<script>
	$(function() {
		$('#btnadd').click(function(){
			$('#addsub').validate({
						// Specify validation rules
						rules : {
							// The key name on the left side is the name attribute
							// of an input field. Validation rules are defined
							// on the right side
							subid : "required",
							subname: "required",
							nclass: "required",
							
						},
						// Specify validation error messages
						messages : {
							subid : "Please enter a subid",
							subname: "Please enter a subname",
							nclass: "Please enter a class",
							
							
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
						<li class="active"><a href="Manager_BankQuestions.jsp"><i
								class="fa fa-calendar" aria-hidden="true"></i><span
								class="hidden-xs hidden-sm">Manage Subject</span></a></li>
						<li class="active"><a href="Manager_Questions.jsp"><i
								class="fa fa-question-circle" aria-hidden="true"></i><span
								class="hidden-xs hidden-sm">Manage Question</span></a></li>
						<li><a href="Manager_ChangePassword.jsp"><i class="fa fa-key" aria-hidden="true"></i><span
								class="hidden-xs hidden-sm">Change Password </span></a></li>
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
						<br> <br> <br>
						<section class="features">
						<h3 class="text-center">ADD SUBJECT</h3>
						<div class="container">
							<form action="AddSub_Controller" method="post">
							    <label	for="subname">SubName</label> <input type="text" name="subname" id="subname" placeholder="" />
								<button type="submit" id = "btnadd" onclick="return confirm('Add Success!')">ADD</button>
								<button type="submit" id ="btncancel" onclick="location.href='Manager_AddSubject.jsp';">CANCEL</button>
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