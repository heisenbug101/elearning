<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
<style>
body{
	background-color: #DE3163;
	color: white;
	height: 100vh;
}
.heading{
font-size:40px;
margin-top: 50px;
}
.submitbutton{
	margin-left:450px;
	padding:8px;
	font-size:20px;
	color: #C0392B;
	background-color: white;
	border-radius:5px;
	margin-top: 20px;
}
.submitbutton:hover{
	margin-left:450px;
	padding:8px;
	font-size:20px;
	color: white;
	background-color: #641E16;
	border-radius:5px;
	margin-top: 20px;
}
.resetbutton{
	margin-left:30px;
	padding:8px;
	font-size:20px;
	color: #C0392B;
	background-color: white;
	border-radius:5px;
	margin-top: 20px;
}
.resetbutton:hover{
	margin-left:30px;
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
	width:40%;
}
.inputfld1{
	margin-left: 420px;
	padding: 5px;
	broder-radius:10px;
	font-size:12px;
	width:40%;
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
</style>
</head>
<body>
<center><p class="heading"><b>REGISTER NEW USER</b></p></center>
<form action="register" method="POST">
    <pre>
    <p class="txtfld">User ID</p> <input class="inputfld1" type="number" name="userid">
    <p class="txtfld">Name</p> <input class="inputfld1" type="text" name="name">
    <p class="txtfld">Email ID</p><input class="inputfld" type="email" name="email">
   <p class="txtfld">Password</p><input class="inputfld" type="password" name="password">
    <p class="txtfld">Address</p><input class="inputfld" type="text" name="address">
    <p class="txtfld">Phone Number</p><input class="inputfld" type="number" name="phone">
    <p class="txtfld">Image</p><input class="inputfld" type="text" name="image">
    <p class="txtfld">Date</p><input class="inputfld" type="text" name="date"><br>
                <input class="submitbutton" type="submit" value="Register">  <input class="resetbutton" type="reset" value="Reset"><br>
    </pre>
</form>

</body>
</html>