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
import com.amdocs.project.model.Course;

@WebServlet("/course")
public class CourseController extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		
		int courseId = Integer.parseInt(request.getParameter("courseId"));
		String coursename = request.getParameter("coursename");
		String courseres=request.getParameter("courseres");
		int coursefee = Integer.parseInt(request.getParameter("course_fees"));
		String coursedesc= request.getParameter("coursedesc");
		
		CourseDAO dao = new CourseDAOIMPL();
		//Course course = new Course(courseId);
		Course course = new Course(courseId, coursename,courseres,coursedesc,coursefee);
		
		
		
		boolean status = dao.saveCourse(course);
		
		if(status)
			response.sendRedirect("course.jsp");
		else
			out.println("Try Again");
		
		
	
	}
}

