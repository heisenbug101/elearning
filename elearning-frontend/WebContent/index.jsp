<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>e-Learning</title>
<style>
body{
	background-color: #DE3163;
	color: white;
	height: 100vh;
}

.heading{
font-size:60px;
margin-top: 50px;
}
.adminbutton{
	margin-left:565px;
	padding:15px;
	font-size:20px;
	color: #C0392B;
	background-color:white;
	border-radius:5px;
	margin-top: 20px;
	text-decoration: none;
}
.adminbutton:hover{
	margin-left:565px;
	padding:15px;
	font-size:20px;
	color: white;
	background-color:#641E16;
	border-radius:5px;
	margin-top: 20px;
}
.userbutton{
	margin-left:570px;
	padding:15px;
	font-size:20px;
	color: #C0392B;
	background-color:white;
	border-radius:5px;
	margin-top:50px;
	text-decoration: none;
}
.userbutton:hover{
	margin-left:570px;
	padding:15px;
	font-size:20px;
	color: white;
	background-color:#641E16;
	border-radius:5px;
	margin-top:20px;
}
</style>
</head>
<body>
<center><p class="heading"><b>e-Learning Home</b></p></center>

<br><br><br>

<a class="userbutton" href="loginuser.jsp">USER CONSOLE</a><br><br><br><br><br>
<a class="adminbutton" href="loginadmin.jsp">ADMIN CONSOLE</a><br><br><br><br><br>
</body>
</html>