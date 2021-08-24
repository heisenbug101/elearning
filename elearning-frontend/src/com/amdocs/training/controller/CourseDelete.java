package com.amdocs.training.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.amdocs.project.dao.CourseDAO;
import com.amdocs.project.dao.impl.CourseDAOIMPL;

@WebServlet("/coursedel")
public class CourseDelete extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		
		int course_ID = Integer.parseInt(request.getParameter("courseid"));
		

		CourseDAO dao1 = new CourseDAOIMPL();
		
		
		
		
		boolean stat= dao1.delete(course_ID);
		
		if(stat)
		{
			response.sendRedirect("course.jsp");
		}
		else {
			out.println("Could not delete course!");
		}
	}
}
