<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin | Feedbacks</title>
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
	margin-left: 600px;
	padding: 8px;
	font-size: 20px;
	color: #C0392B;
	background-color: white;
	border-radius: 5px;
	margin-top: 20px;
}

.submitbutton:hover {
	margin-left: 600px;
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
	margin-left: 400px;
	border-radius: 5px;
	background-color: white;
}
</style>
</head>
<body>
	<ul>
		<li><a href="adminDashboard.jsp">Home</a></li>
		<li><a href="course.jsp">Courses</a></li>
		<li><a href="userdisplay.jsp">Users</a></li>
		<li><a href="contactdisplay.jsp">Contacts</a></li>
		<li><a class="active" href="feedbackdisplay.jsp">Feedbacks</a></li>
		<li><a href="index.jsp" style="margin-left: 700px;">Log Out</a></li>
	</ul>

	
	<!-- Display all feedbacks -->
	<hr>
	<center>
		<p class="heading">FEEDBACKS</p>
	</center>
	<%
		try {
			String connectionURL = "jdbc:mysql://localhost:3306/e_learning";
			Connection connection = null;
			Statement statement = null;
			// declare a resultset that uses as a table for output data from tha table.
			ResultSet rs = null;
			// Load JBBC driver "com.mysql.jdbc.Driver"
			Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
			connection = DriverManager.getConnection(connectionURL, "root", "root");
			/* createStatement() is used for create statement object that is used for 
			sending sql statements to the specified database. */
			statement = connection.createStatement();
			// sql query to retrieve values from the secified table.
			String QueryString = "SELECT * from feedback";
			rs = statement.executeQuery(QueryString);
	%>
	<TABLE class="tableedit" cellpadding="10" style="color: midnightblue;">
		<TR>
			<TD>User ID</TD>
			<TD>Name</TD>
			<TD>Email</TD>
			<TD>Feedback ID</TD>
			<TD>Feedback</TD>
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
			// close all the connections.
				rs.close();
				statement.close();
				connection.close();
			} catch (Exception ex) {
		%>
		
		<font size="+3" color="red"></b> <%
 	out.println("Unable to connect to database.");
 	}
 %>
 </font>
	</TABLE>
	<TABLE>
		<TR>
			<TD><FORM ACTION="feedbackdisplay.jsp" method="get">
					<button class="submitbutton" type="refresh">Refresh</button></FORM></TD>
		</TR>
	</TABLE>
	<hr>
	<!-- Delete a feedback -->
	
	<center>
		<p class="heading">DELETE FEEDBACK</p>
	</center>
	<form action="feedbackdel" method="POST">
		<pre>
 
     <p class="txtfld">Feedback ID</p> <input class="inputfld" type="number" name="feedbackid">
     	<input class="deletebutton" type="submit" value="Delete Feedback"><br>
                
     
    </pre>
	</form>
	<hr>
</body>
</html>