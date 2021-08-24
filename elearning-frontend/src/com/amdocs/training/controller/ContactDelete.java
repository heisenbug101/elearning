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

@WebServlet("/contactdel")
public class ContactDelete extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		
		int contact_ID=Integer.parseInt(request.getParameter("contactid"));
		
		ContactDAO dao1 = new ContactDAOIMPL();
		
		
		
		boolean stat= dao1.delete(contact_ID);
		if(stat)
		{
			response.sendRedirect("contactdisplay.jsp");
		}
		else {
			out.println("Contact could not be deleted!! Try Again!");
		}
	}
}
