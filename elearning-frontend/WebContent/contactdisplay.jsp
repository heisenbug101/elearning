<!-- Admin | Contacts -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin | Contacts</title>
<style>
body {
	background-image: radial-gradient(#33B7FF, #5633ff);
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
	color: midnightblue;
	background-color: lightblue;
	border-radius: 5px;
	margin-top: 20px;
}

.submitbutton:hover {
	margin-left: 600px;
	padding: 8px;
	font-size: 20px;
	color: midnightblue;
	background-color: cyan;
	border-radius: 5px;
	margin-top: 20px;
}

.deletebutton {
	margin-left: 500px;
	padding: 8px;
	font-size: 20px;
	color: midnightblue;
	background-color: lightblue;
	border-radius: 5px;
	margin-top: 20px;
}

.deletebutton:hover {
	margin-left: 500px;
	padding: 8px;
	font-size: 20px;
	color: midnightblue;
	background-color: cyan;
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

li a:hover:not (.active ) {
	background-color: #111;
}

.active {
	background-color: #33A1FF;
	color: black;
}

.tableedit {
	margin-left: 350px;
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
		<li><a class="active" href="contactdisplay.jsp">Contacts</a></li>
		<li><a href="feedbackdisplay.jsp">Feedbacks</a></li>
		<li><a href="index.jsp" style="margin-left: 700px;">Log Out</a></li>
	</ul>

	<!-- Display all contacts -->


	<center>
		<p class="heading">Contacts</p>
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
			String QueryString = "SELECT * from contact";
			rs = statement.executeQuery(QueryString);
	%>
	<TABLE class="tableedit" cellpadding="10" border="0.5"
		style="color: midnightblue;">
		<TR>
			<TD>User ID</TD>
			<TD>Name</TD>
			<TD>Email</TD>
			<TD>Phone</TD>
			<TD>Message</TD>
			<TD>Contact ID</TD>
		</TR>
		<%
			while (rs.next()) {
		%>
		<TR>
			<TD><%=rs.getInt(1)%></TD>
			<TD><%=rs.getString(2)%></TD>
			<TD><%=rs.getString(3)%></TD>
			<TD><%=rs.getLong(4)%></TD>
			<TD><%=rs.getString(5)%></TD>
			<TD><%=rs.getInt(6)%></TD>
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
			<TD><form ACTION="contactdisplay.jsp" method="get">
					<button class="submitbutton" type="refresh">Refresh</button></form></TD>
		</TR>
	</TABLE>


	<!-- Delete a contact -->

	<center>
		<p class="heading">Delete Contact</p>
	</center>

	<form action="contactdel" method="POST">
		<pre>
     <p class="txtfld">Contact ID</p>
			<input class="inputfld" type="number" name="contactid">
     	<input class="deletebutton" type="submit" value="Delete contact"><br>      
    </pre>
	</form>
</body>
</html>