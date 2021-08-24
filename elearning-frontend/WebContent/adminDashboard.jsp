<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin</title>
<style>
body{
	background-color: #DE3163;
	color: white;
	height: 100vh;
}
.heading{
font-size:25px;
margin-top: 50px;
}
.submitbutton{
	margin-left:460px;
	padding:8px;
	font-size:20px;
	color: #C0392B;
	background-color: white;
	border-radius:5px;
	margin-top: 20px;
}
.submitbutton:hover{
	margin-left:460px;
	padding:8px;
	font-size:20px;
	color: white;
	background-color: #641E16;
	border-radius:5px;
	margin-top: 20px;
}
.inputfld{
	margin-left: 430px;
	padding: 5px;
	broder-radius:10px;
	font-size:12px;
	width:30%;
}
.inputfld1{
	margin-left: 420px;
	padding: 5px;
	broder-radius:10px;
	font-size:12px;
	width:30%;
}
.inputfld2{
	margin-left: 438px;
	padding: 5px;
	broder-radius:10px;
	font-size:12px;
	width:30%;
}
.txtfld{
	font-size:20px;
	margin-left:440px;
}
ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #333;
  width:100%;
}

li {
  float: left;
}

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

li a:hover:not(.active) {
  background-color: #111;
}

.active {
  background-color: #F5B7B1;
  color: black;
}
</style>
</head>
<body>
<ul>
  <li><a class="active" href="adminDashboard.jsp">Home</a></li>
  <li><a href="course.jsp">Courses</a></li>
  <li><a href="userdisplay.jsp">Users</a></li>
  <li><a href="contactdisplay.jsp">Contacts</a></li>
  <li><a href="feedbackdisplay.jsp">Feedbacks</a></li>
  <li><a href="index.jsp" style="margin-left:700px;">Log Out</a></li>
</ul>

<center><p class="heading"><b>e-Learning Portal</b></p></center>
<center><p class="heading">Welcome back Admin</p></center>
<center><p class="heading">Please use the nav bar to navigate through the sections.</p></center>
</body>
</html>