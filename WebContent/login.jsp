<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@  page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>LogIn</title>
<link href="Bootstrap/css/bootstrap-theme.min.css" rel="stylesheet">
<link href="Bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link
	href="FONTS/font-awesome-4.7.0/font-awesome-4.7.0/css/font-awesome.min.css"
	rel="stylesheet">

<link href="CSS/style.css" rel="stylesheet" type="text/css">
<link href="CSS/login.css" rel="stylesheet" type="text/css">
<script src="https://cdn.jsdelivr.net/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/jquery.validation/1.15.1/jquery.validate.min.js"></script>
<script>
	$(function() {
		// Initialize form validation on the registration form.
		// It has the name attribute "registration"
		$('#btnlogin')
				.click(
						function() {
							$('#login')
									.validate(
											{
												// Specify validation rules
												rules : {
													// The key name on the left side is the name attribute
													// of an input field. Validation rules are defined
													// on the right side
													username : "required",
													password : {
														required : true,
														minlength : 5
													}
												},
												// Specify validation error messages
												messages : {
													username : "Please enter userid",

													password : {
														required : "Please provide a password",
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

	<section class="features">
	<h3 class="text-center">LOGIN</h3>
	<div class="container">
		<form action="LoginController" method="post" id="login">
			<label for="username">Username</label> <input type="text"
				name="username" id="username" placeholder="John123" /> <label
				for="password">Password</label> <input type="password"
				name="password" id="password"
				placeholder="&#9679;&#9679;&#9679;&#9679;&#9679;" /> <label
				for="role">Role</label> <select name="role"
				style="width: 200px; color: black;">
				<%
					Connection cnn = null;
					Statement stm = null;
					ResultSet rs = null;
					
					String  username="";
					try {
						Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
						cnn = DriverManager.getConnection(
								"jdbc:sqlserver://duydo.database.windows.net:1433;database=DBOnlineQuziz;","tttaiduy1234@duydo","Lethaiduy1996");
						stm = cnn.createStatement();
						rs = stm.executeQuery("SELECT * FROM tbl_Role");
						while (rs.next()) {
				%>
				<option value="<%=rs.getString("RoleID")%>"><%=rs.getString("RoleName")%></option>
				<%
					}
					} catch (Exception ex) {
						ex.printStackTrace();
						out.println("Error" + ex.getMessage());
					}
				%>

			</select>

			<button type="submit" id="btnlogin">Login</button>

		</form>
	</div>
	</section>
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