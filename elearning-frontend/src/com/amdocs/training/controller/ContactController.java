package com.amdocs.training.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.amdocs.project.dao.ContactDAO;
import com.amdocs.project.dao.impl.ContactDAOIMPL;
import com.amdocs.project.model.Contact;

@WebServlet("/contact")
public class ContactController extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		
		int user_ID = Integer.parseInt(request.getParameter("userid"));
		String name = request.getParameter("name");
		String email=request.getParameter("email");
		long phone = Long.parseLong(request.getParameter("phone"));
		String message= request.getParameter("message");
		
		
		ContactDAO dao = new ContactDAOIMPL();
		Contact contact = new Contact(user_ID,name,email, phone,message);
		
		boolean status = dao.saveContact(contact);
		
		if(status)
		{
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Contact Saved Successfully!');");
			out.println("location='userDashboard.jsp';");
		    out.println("</script>");
		}
		else
		{
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Error! Try Again.');");
			out.println("location='contact.jsp';");
		    out.println("</script>");
		}
	}
}
