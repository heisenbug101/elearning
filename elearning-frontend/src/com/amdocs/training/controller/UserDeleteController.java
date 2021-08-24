package com.amdocs.training.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.amdocs.project.dao.UserDAO;
import com.amdocs.project.dao.impl.UserDAOIMPL;
import com.amdocs.project.model.User;


@WebServlet("/userdelete")
public class UserDeleteController extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		
		int user_ID=Integer.parseInt(request.getParameter("userid"));
		
		UserDAO dao1 = new UserDAOIMPL();
		
		boolean stat= dao1.delete(user_ID);
		if(stat)
		{
			out.println("<script type=\"text/javascript\">");
			out.println("alert('User Deleted Successfully!');");
			out.println("location='userdisplay.jsp';");
		    out.println("</script>");
		}
		else {
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Error! Try Again.');");
			out.println("location='userdisplay.jsp';");
		    out.println("</script>");
		}
	}
	
}
