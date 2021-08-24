<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login | User</title>
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
	margin-left:465px;
	padding:8px;
	font-size:20px;
	color: #C0392B;
	background-color: white;
	border-radius:5px;
	margin-top: 20px;
}
.submitbutton:hover{
	margin-left:465px;
	padding:8px;
	font-size:20px;
	color: white;
	background-color: #641E16;
	border-radius:5px;
	margin-top: 20px;
}
.register{
	margin-left:410px;
	padding:6px;
	font-size:20px;
	color: #641E16;
	border-radius:5px;
	margin-top: 20px;
}
.register:hover{
	margin-left:410px;
	padding:6px;
	font-size:20px;
	color: white;
	border-radius:5px;
	margin-top: 20px;
}
.inputfld{
	margin-left: 435px;
	padding: 5px;
	broder-radius:10px;
	font-size:12px;
	width:30%;
}
.inputfld1{
	margin-left: 435px;
	padding: 5px;
	broder-radius:10px;
	font-size:12px;
	width:30%;
}

.txtfld{
	font-size:20px;
	margin-left:445px;
}
</style>
</head>
<body>
<center><p class="heading"><b>USER LOGIN</b></p></center>

<form action="loginuser" method="POST">
    <pre>
    <p class="txtfld">Email ID</p> <input class="inputfld" type="email" name="email">
   <p class="txtfld">Password</p> <input class="inputfld1" type="password" name="password"><br>
    
                <input class="submitbutton" type="submit" value="Login"><br><br>
                <a class="register" href="register.jsp">New User? Sign Up</a>
    </pre>
</form>
</body>
</html>