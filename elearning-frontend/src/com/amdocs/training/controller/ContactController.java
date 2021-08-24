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
		
		//ContactDAO dao1 = new ContactDAOIMPL();
		boolean status = dao.saveContact(contact);
		
		if(status)
			out.println("Contact Saved Successfully");
		else
			out.println("Try Again");
		
//		int contact_ID=Integer.parseInt(request.getParameter("contactid"));
//		boolean stat= dao1.delete(contact_ID);
//		if(stat)
//		{
//			response.sendRedirect("contactdisplay.jsp");
//		}
//		else {
//			out.println("Contact could not be deleted!! Try Again!");
//		}
	}
}
