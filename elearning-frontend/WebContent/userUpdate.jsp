<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Dashboard</title>
<style>
body{
	background-image: radial-gradient(#33B7FF,#5633ff);
	color: white;
	height: 100vh;
}
.heading{
font-size:40px;
margin-top: 50px;
}
.submitbutton{
	margin-left:420px;
	padding:8px;
	font-size:20px;
	color: midnightblue;
	background-color:lightblue;
	border-radius:5px;
	margin-top: 20px;
}
.submitbutton:hover{
	margin-left:420px;
	padding:8px;
	font-size:20px;
	color: midnightblue;
	background-color:cyan;
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
	margin-left: 438px;
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
  width: 100%;
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
  background-color: #33A1FF;
  color: black;
}
</style>
</head>
<body>
<ul>
  <li><a href="userDashboard.jsp">Home</a></li>
  <li><a href="coursedisp.jsp">Courses</a></li>
  <li><a href="feedback.jsp">Feedback</a></li>
  <li><a href="contact.jsp">Contact Us</a></li>
  <li><a  class="active" href="userUpdate.jsp">Update Profile</a></li>
  <li><a href="index.jsp" style="margin-left:850px;">Logout</a></li>
</ul>

<center><p class="heading">Update User Details</p></center>
<form action="userupdate" method="POST">
    <pre>
    <p class="txtfld">User ID</p> <input class="inputfld1" type="number" name="userid">
    <p class="txtfld">Name</p> <input class="inputfld1" type="text" name="name">
    <p class="txtfld">Email ID</p><input class="inputfld" type="email" name="email">
   <p class="txtfld">Password</p><input class="inputfld" type="password" name="password">
    <p class="txtfld">Address</p><input class="inputfld" type="text" name="address">
    <p class="txtfld">Phone Number</p><input class="inputfld" type="number" name="phone">
    <p class="txtfld">Image</p><input class="inputfld" type="text" name="image">
    <p class="txtfld">Date</p><input class="inputfld" type="text" name="date"><br>
                <input class="submitbutton" type="submit" value="Update"><br>
    </pre>
</form>
</body>
</html>