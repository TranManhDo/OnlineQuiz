<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@  page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Exam</title>
<link href="Bootstrap/css/bootstrap-theme.min.css" rel="stylesheet">
<link href="Bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="Bootstrap/css/bootstrap-datetimepicker.css" rel="stylesheet">
<link href="Bootstrap/css/bootstrap-datetimepicker.min.css"
	rel="stylesheet">

<link
	href="FONTS/font-awesome-4.7.0/font-awesome-4.7.0/css/font-awesome.min.css"
	rel="stylesheet">

<link href="CSS/style.css" rel="stylesheet" type="text/css">

<link href="CSS/EditAdmin_User.css" rel="stylesheet" type="text/css">
<link href="CSS/login.css" rel="stylesheet" type="text/css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="Bootstrap/js/bootstrap.min.js"></script>
<script src="Bootstrap/js/bootstrap-datetimepicker.min.js"></script>

<script src="https://cdn.jsdelivr.net/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.7.1/css/bootstrap-datepicker.min.css"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.7.1/css/bootstrap-datepicker.css"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.7.1/js/bootstrap-datepicker.js"></script>



<script
	src="https://cdn.jsdelivr.net/jquery.validation/1.15.1/jquery.validate.min.js"></script>
<script>
	$(function() {
		$('#btnxacnhan').click(function() {
			$('#mngexam').validate({
				// Specify validation rules
				rules : {
					// The key name on the left side is the name attribute
					// of an input field. Validation rules are defined
					// on the right side
					namekt : "required",
					datestart : "required",
					datefinish : "required",

				},
				// Specify validation error messages
				messages : {
					namekt : "Please enter 'Ten Ky Thi'",
					datestart : "Please enter date start",
					datefinish : "Please enter date finish",

				},
				// Make sure the form is submitted to the destination defined
				// in the "action" attribute of the form when valid
				submitHandler : function(form) {
					form.submit();
				}
			});
		});
		$('datetimepicker').datetimepicker();

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
			<li><a href="http://localhost:1443/Project2_QuizOnline/">HOME</a></li>
			<li><a href="">ABOUT</a></li>
			<li><a href="">HELP</a></li>
			<li><a href="http://localhost:1443/JqueryValidate_JS/">LOGIN</a></li>
			<li><a href="">REGISTER</a></li>
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
				<!--<button type="button" class="slide-toggle">Slide Toggle</button> -->
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
						<h3 class="text-center">Add Exam</h3>
						<div class="container">
							<form action="AddExam_Controller" id="mngexam" method="post">
								<label> Exam Name <input type="text"
									class="form-control" name="nameExam"></label> <label>
									Time Test <input type="text" class="form-control datepicker"
									id="datetimepicker" name="timeTest">
								</label> <label> Time Open<input type="text"
									class="form-control datepicker" name="timeOpen"></label> <label>
									Time Finish<input type="text" class="form-control datepicker"
									name="timeFinish">
								</label> <label> Sum Question <input type="text"
									class="form-control" name="sumQs"></label> <label for="subject">Subject</label>
								<select name="subject"
									style="width: 100px; font-size: 14pt; color: black;">
									<%
										Connection cnn = null;
										Statement stm = null;
										ResultSet rs = null;
										try {
											Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
											cnn = DriverManager.getConnection(
													"jdbc:sqlserver://duydo.database.windows.net:1433;database=DBOnlineQuziz;","tttaiduy1234@duydo","Lethaiduy1996");
											stm = cnn.createStatement();
											rs = stm.executeQuery("SELECT * FROM Subject");
											while (rs.next()) {
									%>
									<option value="<%=rs.getString("SubjectID")%>"><%=rs.getString("SubjectName")%></option>
									<%
										}
										} catch (Exception ex) {
											ex.printStackTrace();
											out.println("Error" + ex.getMessage());
										}
									%>
								</select> <label for="class">Class</label> <select name="class"
									style="width: 100px; font-size: 14pt; color: black;">
									<%
										try {
											Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
											cnn = DriverManager.getConnection(
													"jdbc:sqlserver://duydo.database.windows.net:1433;database=DBOnlineQuziz;","tttaiduy1234@duydo","Lethaiduy1996");
											stm = cnn.createStatement();
											rs = stm.executeQuery("SELECT * FROM tbl_Class");
											while (rs.next()) {
									%>
									<option value="<%=rs.getString("ClassID")%>"><%=rs.getString("ClassName")%></option>
									<%
										}
										} catch (Exception ex) {
											ex.printStackTrace();
											out.println("Error" + ex.getMessage());
										}
									%>
								</select>
								<center>
									<button type="submit" id="btnCreate">CREATE</button>

									<button type="button" id="btnSelectQs"
										onclick="location.href='Manager_SelectQuestion.jsp';">Details</button>
								</center>

							</form>
						</div>
						</section>
						<div></div>
						<div></div>



						</br> </br>



						<div class="container"></div>


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