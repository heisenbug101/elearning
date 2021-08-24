<!-- Displays all the courses for the user to enroll (User Dashboard Section - Course)  -->

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
           <%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User | Course</title>
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
.deletebutton{
	margin-left:500px;
	padding:8px;
	font-size:20px;
	color: #C0392B;
	background-color: white;
	border-radius:5px;
	margin-top: 20px;
}
.deletebutton:hover{
	margin-left:500px;
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
.tableedit{
	margin-left:370px;
	border-radius:5px;
	background-color:white;
}
</style>
</head>
<body>
<ul>
  <li><a href="userDashboard.jsp">Home</a></li>
  <li><a class="active" href="coursedisp.jsp">Courses</a></li>
  <li><a href="feedback.jsp">Feedback</a></li>
  <li><a href="contact.jsp">Contact Us</a></li>
  <li><a href="userUpdate.jsp">Update Profile</a></li>
  <li><a href="index.jsp" style="margin-left:850px;">Logout</a></li>
</ul>
    <center><p class="heading">e-Learning Courses</p></center> 
<%
try {
/* Create string of connection url within specified format with machine
name, port number and database name. Here machine name id localhost and 
database name is student. */
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
String QueryString = "SELECT * from course";
rs = statement.executeQuery(QueryString);
%>
<TABLE class="tableedit" cellpadding="10" border="0.5" style=" color:midnightblue;">
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
<% } %>
<%
// close all the connections.
rs.close();
statement.close();
connection.close();
} catch (Exception ex) {
%>
</font>
<font size="+3" color="red"></b>
<%
out.println("Unable to connect to database.");
}
%>
</TABLE>
</font>
</body>
</html>