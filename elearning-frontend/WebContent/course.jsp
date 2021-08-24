<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin | Courses</title>
<style>
body{
	background-color: #DE3163;
	color: white;
	height: 100vh;
}

.heading {
	font-size: 40px;
	margin-top: 50px;
}

.submitbutton {
	margin-left: 580px;
	padding: 8px;
	font-size: 20px;
	color: #C0392B;
	background-color: white;
	border-radius: 5px;
	margin-top: 20px;
}

.submitbutton:hover {
	margin-left: 580px;
	padding: 8px;
	font-size: 20px;
	color: white;
	background-color: #641E16;
	border-radius: 5px;
	margin-top: 20px;
}

.deletebutton {
	margin-left: 500px;
	padding: 8px;
	font-size: 20px;
	color: #C0392B;
	background-color: white;
	border-radius: 5px;
	margin-top: 20px;
}

.deletebutton:hover {
	margin-left: 500px;
	padding: 8px;
	font-size: 20px;
	color: white;
	background-color: #641E16;
	border-radius: 5px;
	margin-top: 20px;
}

.inputfld {
	margin-left: 430px;
	padding: 5px;
	broder-radius: 10px;
	font-size: 12px;
	width: 30%;
}

.inputfld1 {
	margin-left: 420px;
	padding: 5px;
	broder-radius: 10px;
	font-size: 12px;
	width: 30%;
}

.inputfld2 {
	margin-left: 438px;
	padding: 5px;
	broder-radius: 10px;
	font-size: 12px;
	width: 30%;
}

.txtfld {
	font-size: 20px;
	margin-left: 440px;
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
	background-color: #F5B7B1;
	color: black;
}

.tableedit {
	margin-left: 370px;
	border-radius: 5px;
	background-color: white;
}
</style>
</head>
<body>
	<ul>
		<li><a href="adminDashboard.jsp">Home</a></li>
		<li><a class="active" href="course.jsp">Courses</a></li>
		<li><a href="userdisplay.jsp">Users</a></li>
		<li><a href="contactdisplay.jsp">Contacts</a></li>
		<li><a href="feedbackdisplay.jsp">Feedbacks</a></li>
		<li><a href="index.jsp" style="margin-left: 700px;">Log Out</a></li>
	</ul>
	<hr>
	<!-- Display all the courses -->

	<center>
		<p class="heading">COURSES</p>
	</center>
	<%
		try {
			String connectionURL = "jdbc:mysql://localhost:3306/e_learning";
			Connection connection = null;
			Statement statement = null;
			ResultSet rs = null;
			Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
			connection = DriverManager.getConnection(connectionURL, "root", "root");
			statement = connection.createStatement();
			String QueryString = "SELECT * from course";
			rs = statement.executeQuery(QueryString);
	%>
	<TABLE class="tableedit" cellpadding="10" border="0.5"
		style="color: midnightblue;">
		<TR>
			<TD>Course ID</TD>
			<TD>Course Name</TD>
			<TD>Description</TD>
			<TD>Fees</TD>
			<TD>Resources</TD>
		</TR>
		<%
			while (rs.next()) {
		%>
		<TR>
			<TD><%=rs.getInt(1)%></TD>
			<TD><%=rs.getString(2)%></TD>
			<TD><%=rs.getString(3)%></TD>
			<TD><%=rs.getInt(4)%></TD>
			<TD><%=rs.getString(5)%></TD>

		</TR>
		<%
			}
		%>
		<%
			rs.close();
				statement.close();
				connection.close();
			} catch (Exception ex) {
		%>
		
		<font size="+3" color="red">
		<%
 				out.println("Unable to connect to database.");
 			}
 		%></font>
	</TABLE>
	<TABLE>
		<TR>
			<TD><form ACTION="course.jsp" method="get">
					<button class="submitbutton" type="refresh">Refresh</button></form></TD>
		</TR>
	</TABLE>
	<hr>

	<!-- Insert a course -->

	<center>
		<p class="heading">ADD COURSE</p>
	</center>
	<form action="course" method="POST">
		<pre>
    
    <p class="txtfld">Course ID</p> <input class="inputfld" type="text" name="courseId">
    <p class="txtfld">Course Name</p> <input class="inputfld" type="text" name="coursename">
    <p class="txtfld">Course resources</p> <input class="inputfld" type="text" name="courseres">
    <p class="txtfld">Course description</p> <input class="inputfld" type="text" name="coursedesc">
    <p class="txtfld">Course Fees</p> <input class="inputfld" type="number" name="course_fees"><br>
    <input class="deletebutton" type="submit" value="Add course"><br>
                
     
    </pre>
	</form>
	<hr>
	
	<!--  Update an existing course -->
	</form>
	<center>
		<p class="heading">UPDATE EXISTING COURSE</p>
	</center>
	<form action="courseupdate" method="POST">
		<pre>
    <p class="txtfld">Course ID</p> <input class="inputfld" type="number" name="courseid"><br>
    <p class="txtfld">Course Name</p> <input class="inputfld" type="text" name="coursename">
    <p class="txtfld">Course resources</p> <input class="inputfld" type="text" name="courseres">
    <p class="txtfld">Course description</p> <input class="inputfld" type="text" name="coursedesc">
    <p class="txtfld">Course Fees</p> <input class="inputfld" type="number" name="course_fees"><br>
    <input class="deletebutton" type="submit" value="Update course"><br>
                
     
    </pre>
	</form>
	<hr>

	<!-- Delete a course -->
	<center>
		<p class="heading">DELETE COURSE</p>
	</center>
	<form action="coursedel" method="POST">
		<pre>      
     <p class="txtfld">Course ID</p> <input class="inputfld" type="number" name="courseid">
     	<input class="deletebutton" type="submit" value="Delete course"><br>
    </pre>
	</form>
	<hr>

</body>
</html>