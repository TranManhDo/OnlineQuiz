<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@  page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Manager User</title>
<link href="Bootstrap/css/bootstrap-theme.min.css" rel="stylesheet">
<link href="Bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link
	href="FONTS/font-awesome-4.7.0/font-awesome-4.7.0/css/font-awesome.min.css"
	rel="stylesheet">
<link href="CSS/style.css" rel="stylesheet" type="text/css">
<link href="CSS/admin-user.css" rel="stylesheet" type="text/css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"></script>
<script src="https://cdn.jsdelivr.net/jquery/1.12.4/jquery.min.js"></script>
<script src="//cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css"></script>
<script src="//cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>

<script src="	src="https://cdn.jsdelivr.net/jquery.validation/1.15.1/jquery.validate.min.js"></script>
</script>
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
<script>
	$(document).ready(function() {
		$('#example').DataTable();
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
						<li><a href="admin_roleuserjsp.jsp"><i class="fa fa-user"
								aria-hidden="true"></i><span class="hidden-xs hidden-sm">Manage
									Role</span></a></li>
						<li class="active"><a href="admin_user.jsp"><i
								class="fa fa-calendar" aria-hidden="true"></i><span
								class="hidden-xs hidden-sm">Manage Users</span></a></li>
						<li><a href="Admin_Class.jsp"><i class="fa fa-flag-o"
								aria-hidden="true"></i><span class="hidden-xs hidden-sm">Manager
									Class </span></a></li>
						<li><a href="Admin_ChangePass.jsp"><i
								class="fa fa-sign-out" aria-hidden="true"></i><span
								class="hidden-xs hidden-sm">Change Password</span></a></li>
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
						<form action="UpdateUser_Controller" method="post">

							<table id="example" class="table table-striped table-bordered">
								<thead>
									<tr>

										<th>UserId</th>
										<th>UserName</th>
										<th>FullName</th>
										<th>BirthDay</th>
										<th>Email</th>
										<th>Sex</th>
										<th>RoleName</th>
										<th>ClassName</th>
										<th>Action</th>

									</tr>
								</thead>
								<tbody>
									<%
										Connection cnn = null;
										Statement stm = null;
										ResultSet rs = null;
										int i = 0;
										try {
											Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
											cnn = DriverManager.getConnection(
													"jdbc:sqlserver://duydo.database.windows.net:1433;database=DBOnlineQuziz;","tttaiduy1234@duydo","Lethaiduy1996");
											stm = cnn.createStatement();
											rs = stm.executeQuery(
													"select UserID,UserName,FullName,Email,BirthDay,Sex,RoleName,ClassName from dbo.tbl_User u,tbl_Role r,tbl_Class c where u.RoleID=r.RoleID and u.ClassID=c.ClassID");
											while (rs.next()) {
									%>
									<tr>

										<td><%=rs.getString("UserID")%></td>
										<td><%=rs.getString("UserName")%></td>
										<td><%=rs.getString("FullName")%></td>
										<td><%=rs.getString("BirthDay")%></td>
										<td><%=rs.getString("Email")%></td>
										<td><%=rs.getString("Sex")%></td>
										<td><%=rs.getString("RoleName")%></td>
										<td><%=rs.getString("ClassName")%></td>
										<td><button type="submit" formaction="DelUser_Controller"
												class="btn btn-success" value="<%=rs.getString("UserID")%>"
												name="delete">
												<i class="fa fa-trash-o" aria-hidden="true"></i>DELETE
											</button>
											<button type="button" class="btn btn-success"
												value="<%=rs.getString("UserID")%>"
												onclick="location.href='EditAdmin_User.jsp';" name="update">
												<i class="fa fa-refresh" aria-hidden="true"></i>UPDATE
											</button></td>
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

						</form>

						<center>
							<button type="submit" class="btn btn-success"
								onclick="location.href='AddAdmin_User.jsp';">
								<i class="fa fa-plus" aria-hidden="true"></i>ADD
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