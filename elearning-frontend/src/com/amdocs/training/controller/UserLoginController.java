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


@WebServlet("/loginuser")
public class UserLoginController extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		
		
		String email=request.getParameter("email");
		String password= request.getParameter("password");
		
		
		
		UserDAO dao = new UserDAOIMPL();
		User user = new User(email,password);
		
		boolean status = dao.loginUser(user);
		
		if(status)
			response.sendRedirect("userDashboard.jsp");
			
		else
		{	
			   out.println("<script type=\"text/javascript\">");
			   out.println("alert('Invalid Credentials!');");
			   out.println("location='loginuser.jsp';");
			   out.println("</script>");
		}
		
	
	}
	
}
