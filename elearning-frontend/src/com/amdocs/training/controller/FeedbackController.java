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

@WebServlet("/feedback")
public class FeedbackController extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		
		int user_ID = Integer.parseInt(request.getParameter("userid"));
		String name = request.getParameter("name");
		String email=request.getParameter("email");
		String feedbackmsg= request.getParameter("feedbackmsg");
		
		
		FeedbackDAO dao = new FeedbackDAOIMPL();
		Feedback feedback = new Feedback( user_ID, name,email, feedbackmsg );
		
		boolean status = dao.saveFeedback(feedback);
		
		if(status)
		{
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Feedback Saved Successfully!');");
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
