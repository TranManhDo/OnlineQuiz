
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@  page import="java.sql.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome to Quiz Online</title>
<link href="Bootstrap/css/bootstrap-theme.min.css" rel="stylesheet">
<link href="Bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link
	href="FONTS/font-awesome-4.7.0/font-awesome-4.7.0/css/font-awesome.min.css"
	rel="stylesheet">

<link href="CSS/style.css" rel="stylesheet" type="text/css">
<link href="CSS/Student_ListQuestion.css" rel="stylesheet"
	type="text/css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
<script
	src="https://cdn.datatables.net/1.10.16/js/dataTables.bootstrap.min.js"></script>
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"></script>
<script
	src="https://cdn.datatables.net/1.10.16/css/dataTables.bootstrap.min.css"></script>

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
		function getTimeRemaining(endtime) {
			  var t = Date.parse(endtime) - Date.parse(new Date());
			  var seconds = Math.floor((t / 1000) % 60);
			  var minutes = Math.floor((t / 1000 / 60) % 60);
			  var hours = Math.floor((t / (1000 * 60 * 60)) % 24);
			 // var days = Math.floor(t / (1000 * 60 * 60 * 24));
			  return {
			    'total': t,
			    //'days': days,
			    'hours': hours,
			    'minutes': minutes,
			    'seconds': seconds
			  };
			}

			function initializeClock(id, endtime) {
			  var clock = document.getElementById(id);
			 // var daysSpan = clock.querySelector('.days');
			  var hoursSpan = clock.querySelector('.hours');
			  var minutesSpan = clock.querySelector('.minutes');
			  var secondsSpan = clock.querySelector('.seconds');

			  function updateClock() {
			    var t = getTimeRemaining(endtime);

			   // daysSpan.innerHTML = t.days;
			    hoursSpan.innerHTML = ('0' + t.hours).slice(-2);
			    minutesSpan.innerHTML = ('0' + t.minutes).slice(-2);
			    secondsSpan.innerHTML = ('0' + t.seconds).slice(-2);

			    if (t.total <= 0) {
			      clearInterval(timeinterval);
			    }
			  }

			  updateClock();
			  var timeinterval = setInterval(updateClock, 1000);
			}

			var deadline = new Date(Date.parse(new Date()) +   15 * 60 * 1000);
			initializeClock('clockdiv', deadline);

	});

</script>
<script>
$(document).ready(function() {
    $('#example').DataTable();
} );
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
						<li class="active"><a
							href="http://localhost:1443/Project2_QuizOnline/Student.jsp"><i
								class="fa fa-home" aria-hidden="true"></i><span
								class="hidden-xs hidden-sm">Home</span></a></li>
						<li><a
							href="http://localhost:1443/Project2_QuizOnline/Student_Person.jsp"><i
								class="fa fa-user" aria-hidden="true"></i><span
								class="hidden-xs hidden-sm">Personal page</span></a></li>
						<li><a
							href="http://localhost:1443/Project2_QuizOnline/Student_ChangePass.jsp"><i
								class="fa fa-key" aria-hidden="true"></i><span
								class="hidden-xs hidden-sm">Change Password </span></a></li>


						<!-- <li><a href="#"><i class="fa fa-calendar"
								aria-hidden="true"></i><span class="hidden-xs hidden-sm">Manage
									Users</span></a></li> -->
						<li><a
							href="http://localhost:1443/Project2_QuizOnline/Student_ExamRes.jsp"><i
								class="fa fa-star" aria-hidden="true"></i><span
								class="hidden-xs hidden-sm"> Exam Result </span></a></li>
						<li><a
							href="http://localhost:1443/Project2_QuizOnline/index.jsp"><i
								class="fa fa-sign-out" aria-hidden="true"></i><span
								class="hidden-xs hidden-sm">Sign Out </span></a></li>
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
					<!--<center>
							<h2>List Users</h2>
						</center>
						<table class="table table-bordered">
							<thead>
								<tr>
									<th>UserId</th>
									<th>UserName</th>
									<th>FullName</th>
									<th>BirthDay</th>
									<th>Email</th>
									<th>RoleName</th>
									<th>ClassName</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>151</td>
									<td>Duy151</td>
									<td>LeThaiDuy</td>
									<td>02/02/1996</td>
									<td>duy151@hcmute.edu.vn</td>
									<td>student</td>
									<td>15A</td>
								</tr>
								<tr>
									<td>152</td>
									<td>Do152</td>
									<td>TranManhDo</td>
									<td>02/05/1997</td>
									<td>do152@hcmute.edu.vn</td>
									<td>student</td>
									<td>15A</td>
								</tr>
								<tr>
									<td>153</td>
									<td>Do153</td>
									<td>VuVanBao</td>
									<td>02/06/1997</td>
									<td>bao153@hcmute.edu.vn</td>
									<td>student</td>
									<td>15A</td>
								</tr>
							</tbody>
						</table>  -->
					<!-- 
					<div class="container">
						<br> <br> <br>

						<section class="features">
						<h3 class="text-center">THE FUNCTION OF THE ADMIN</h3>
						<p class="copy">It is a long established fact that a reader
							will be distracted by the readable content of a page when looking
							at its layout. The point of using Lorem Ipsum is that it has a
							more-or-less normal distribution of letters, as opposed to using
							'Content here, content here', making it look like readable
							English</p>
						<div class="container">
							<div class="row">
								<div class="col-md-4">
									<i class="fa fa-camera"></i>
									<h4>MANAGENMENT ROLES</h4>
									<p class="arranging">It is a long established fact that a
										reader will be distracted by the readable content of a page
										when looking at its layout. The point of using Lorem Ipsum is
										that it has a more-or-less normal distribution of letters, as
										opposed to using 'Content here, content here', making it look
										like readable English</p>
								</div>
								<div class="col-md-4">
									<i class="fa fa-certificate"></i>
									<h4>MANAGAMENT USER</h4>
									<p class="arranging">It is a long established fact that a
										reader will be distracted by the readable content of a page
										when looking at its layout. The point of using Lorem Ipsum is
										that it has a more-or-less normal distribution of letters, as
										opposed to using 'Content here, content here', making it look
										like readable English</p>
								</div>
								<div class="col-md-4">
									<i class="fa fa-envelope"></i>
									<h4>MANAGEMENT NOTIFICATION</h4>
									<p class="arranging">It is a long established fact that a
										reader will be distracted by the readable content of a page
										when looking at its layout. The point of using Lorem Ipsum is
										that it has a more-or-less normal distribution of letters, as
										opposed to using 'Content here, content here', making it look
										like readable English</p>
								</div>
								
							</div>
						</div>
						</section>
					</div>
					 -->
					<br>
					<div class="container">
								<center>
							<th><h3>List of exam questions</h3></th>
							<div id="clockdiv">

								<div>
									<span class="hours"></span>
									<div class="smalltext">Hours</div>
								</div>
								<div>
									<span class="minutes"></span>
									<div class="smalltext">Minutes</div>
								</div>
								<div>
									<span class="seconds"></span>
									<div class="smalltext">Seconds</div>
								</div>
							</div>

						</center>
  <!--
   <ul class="list-group">
							

							<li class="list-group-item disabled">
								<div class="qtext"></div>
							</li>
							<li class="list-group-item"><label
								class="custom-control custom-checkbox"><input
									type="checkbox" class="custom-control-input"><span
									class="custom-control-indicator"></span> </label>							</li>
							
							<li class="list-group-item"><label
								class="custom-control custom-checkbox"> <input
									type="checkbox" class="custom-control-input"> <span
									class="custom-control-indicator"></span>
							</label>C .Porta ac consectetur ac</li>
							<li class="list-group-item"><label
								class="custom-control custom-checkbox"> <input
									type="checkbox" class="custom-control-input"> <span
									class="custom-control-indicator"></span>
							</label>D .Vestibulum at eros</li>
						</ul>
						<ul class="pager">
							<li><a href="#">Previous</a></li>
							<li><a
								href="http://localhost:1443/Project2_QuizOnline/Student_ListQuestion.jsp#">Next</a></li>
						</ul>
						
   -->
						
					
						<table id="example" class="table table-striped table-bordered"
							cellspacing="0" width="100%">
							<thead>
							     
								<tr>
									<th>Question Name</th>
									<th>Answer</th>
									<th>Select</th>
	
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
									rs = stm.executeQuery("select Question.QstContent,Answer.OptContent,Answer.TrueFaile from dbo.Question ,Answer where Question.QstID=Answer.QstID");
									while (rs.next()) {
							%>
							
								<tr>
										<td><%=rs.getString("QstContent")%></td>
										<td><%=rs.getString("OptContent")%></td>
										<td> <input type="checkbox" value="<%=rs.getString("TrueFaile")%>"></td>
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
					
					 
						<center>
							<button type="button" class="btn btn-success"
								onclick="return confirm('Saved')">	
								<i class="fa fa-floppy-o" aria-hidden="true"></i>SAVE
							</button>
							<button type="button" class="btn btn-success"
								onclick="return confirm('Are you want submit?')">
								<i class="fa fa-calendar-check-o" aria-hidden="true"></i>SUBMIT
								AND SCORES
							</button>
						</center>

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