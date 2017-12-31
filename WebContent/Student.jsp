
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@  page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>List Exams</title>
<link href="Bootstrap/css/bootstrap-theme.min.css" rel="stylesheet">
<link href="Bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link
	href="FONTS/font-awesome-4.7.0/font-awesome-4.7.0/css/font-awesome.min.css"
	rel="stylesheet">
<link href="CSS/style.css" rel="stylesheet" type="text/css">
<link href="CSS/Student.css" rel="stylesheet" type="text/css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script>
	$(function() {
		$("#btn-search")
				.click(
						function() {
							$(".error").hide();
							var hasError = false;
							var searchReg = /^[a-zA-Z0-9-]+$/;
							var searchVal = $("#search-text").val();
							if (searchVal == '') {
								$("#search-text")
										.after(
												'<span class="error">Please enter a search term.</span>');
								hasError = true;
							} else if (!searchReg.test(searchVal)) {
								$("#search-text")
										.after(
												'<span class="error">Enter valid text.</span>');
								hasError = true;
							}
							if (hasError == true) {
								return false;
							}
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
						<li><a href="Student.jsp"><i class="fa fa-home"
								aria-hidden="true"></i><span class="hidden-xs hidden-sm">Home</span></a></li>
						<li><a href="Student_Person.jsp"><i class="fa fa-user"
								aria-hidden="true"></i><span class="hidden-xs hidden-sm">Personal
									page</span></a></li>
						<li><a href="Student_ChangePass.jsp"><i class="fa fa-key"
								aria-hidden="true"></i><span class="hidden-xs hidden-sm">Change
									Password </span></a></li>


						<!-- <li><a href="#"><i class="fa fa-calendar"
								aria-hidden="true"></i><span class="hidden-xs hidden-sm">Manage
									Users</span></a></li> -->
						<li><a href="Student_ExamRes.jsp"><i class="fa fa-star"
								aria-hidden="true"></i><span class="hidden-xs hidden-sm">
									Exam Result </span></a></li>
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
						<form>

							<input type="text" name="search" placeholder="Enter UserId"
								id="search-text" />
							<button type="button" class="btn btn-success" id="btn-search">
								<i class="fa fa-search" aria-hidden="true"></i>SEARCH
							</button>


						</form>
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
										alt="Student"> <b class="caret"></b></a>
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
						<center>
							<h2>List of exam questions</h2>
						</center>
						<table class="table table-striped">
							<thead>
								<tr>
                                   <th>ExamName</th>
								  <th>ClassName</th>
     
								</tr>
							</thead>
							<tbody>
								<%
									Connection cnn = null;
									Statement stm = null;
									ResultSet rs = null;

									try {
										Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
										cnn = DriverManager.getConnection(
												"jdbc:sqlserver://duydo.database.windows.net:1433;database=DBOnlineQuziz;","tttaiduy1234@duydo","Lethaiduy1996");
										stm = cnn.createStatement();
										rs = stm.executeQuery(
												"select   Exam.ExamName,ClassName from dbo.Exam_Class ,dbo.Exam,dbo.tbl_Class where Exam_Class.ClassID=tbl_Class.ClassID and Exam_Class.ExamID=Exam.ExamID");
										while (rs.next()) {
								%>
								<tr>

									<td> <a
										class="link_quiz"
										href="Student_Exam.jsp"
										>Exam:<%=rs.getString("ExamName")%>‘</a></td>
									<td>Class:<%=rs.getString("ClassName")%></td>
								</tr>
								<%
									}
									} catch (Exception ex) {
										ex.printStackTrace();
										out.println("Error" + ex.getMessage());
									}
								%>

							</tbody>
						</table>
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