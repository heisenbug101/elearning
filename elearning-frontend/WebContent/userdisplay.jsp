<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin | Users</title>
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
	margin-left: 250px;
	border-radius: 5px;
	background-color: white;
}
</style>
</head>
<body>
	<ul>
		<li><a href="adminDashboard.jsp">Home</a></li>
		<li><a href="course.jsp">Courses</a></li>
		<li><a class="active" href="userdisplay.jsp">Users</a></li>
		<li><a href="contactdisplay.jsp">Contacts</a></li>
		<li><a href="feedbackdisplay.jsp">Feedbacks</a></li>
		<li><a href="index.jsp" style="margin-left: 700px;">Log Out</a></li>
	</ul>
	<hr>
	<!-- Display all users -->
	
	<center>
		<p class="heading">USERS</p>
	</center>
	<% 
		try {
			
			String connectionURL = "jdbc:mysql://localhost:3306/e_learning";
			// declare a connection by using Connection interface
			Connection connection = null;
			/* declare object of Statement interface that is used for executing sql 
			statements. */
			Statement statement = null;
			// declare a resultset that uses as a table for output data from tha table.
			ResultSet rs = null;
			// Load JBBC driver "com.mysql.jdbc.Driver"
			Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
			/* Create a connection by using getConnection() method that takes parameters 
			of string type connection url, user name and password to connect to database.*/
			connection = DriverManager.getConnection(connectionURL, "root", "root");
			/* createStatement() is used for create statement object that is used for 
			sending sql statements to the specified database. */
			statement = connection.createStatement();
			// sql query to retrieve values from the secified table.
			String QueryString = "SELECT * from user1";
			rs = statement.executeQuery(QueryString);
	%>
	<TABLE class="tableedit" cellpadding="10" style="color: midnightblue;">
		<TR>
			<TD>User ID</TD>
			<TD>Name</TD>
			<TD>Phone</TD>
			<TD>Email</TD>
			<TD>Address</TD>
			<TD>Date</TD>
			<TD>Password</TD>
			<TD>Photo</TD>
		</TR>
		<%
			while (rs.next()) {
		%>
		<TR>
			<TD><%=rs.getInt(1)%></TD>
			<TD><%=rs.getString(2)%></TD>
			<TD><%=rs.getLong(3)%></TD>
			<TD><%=rs.getString(4)%></TD>
			<TD><%=rs.getString(5)%></TD>
			<TD><%=rs.getString(6)%></TD>
			<TD><%=rs.getString(7)%></TD>
			<TD><%=rs.getString(8)%></TD>
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
		
		<font size="+3" color="red"> 
		<%
 				out.println("Unable to connect to database.");
 			}
		 %>
		 </font>
	</TABLE>
	<TABLE>
		<TR>
			<TD><FORM ACTION="userdisplay.jsp" method="get">
					<button class="submitbutton" type="refresh">Refresh</button></FORM></TD>
		</TR>
	</TABLE>
	
	<hr>
	<!-- Delete a User -->
	
	<center>
		<p class="heading">DELETE USER</p>
	</center>
	<form action="userdelete" method="POST">
		<pre>
               
     <p class="txtfld">User ID</p> <input class="inputfld" type="number" name="userid">
     	<input class="deletebutton" type="submit" value="Delete user"><br>     
     
    </pre>
	</form>
	<hr>
</body>
</html>