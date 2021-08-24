package com.amdocs.training.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.amdocs.project.dao.FeedbackDAO;
import com.amdocs.project.dao.impl.FeedbackDAOIMPL;
import com.amdocs.project.model.Feedback;

@WebServlet("/feedbackdel")
public class FeedbackDeleteController extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		
		int feedback_ID= Integer.parseInt(request.getParameter("feedbackid"));
		
		
		FeedbackDAO dao = new FeedbackDAOIMPL();
		
		
		boolean status = dao.delete(feedback_ID);
		
		if(status)
		{
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Feedback Deleted Successfully!');");
			out.println("location='feedbackdisp.jsp';");
		    out.println("</script>");
		}
			
		else
		{
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Error! Try Again.');");
			out.println("location='feedbackdisp.jsp';");
		    out.println("</script>");
		}
	}
	
}
