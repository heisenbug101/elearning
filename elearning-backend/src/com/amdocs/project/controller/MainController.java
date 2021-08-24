package com.amdocs.project.controller;

import com.amdocs.project.dao.AdminDAO;
import com.amdocs.project.dao.ContactDAO;
import com.amdocs.project.dao.CourseDAO;
import com.amdocs.project.dao.FeedbackDAO;
import com.amdocs.project.dao.UserDAO;
import com.amdocs.project.dao.impl.AdminDAOIMPL;
import com.amdocs.project.dao.impl.ContactDAOIMPL;
import com.amdocs.project.dao.impl.CourseDAOIMPL;
import com.amdocs.project.dao.impl.FeedbackDAOIMPL;
import com.amdocs.project.dao.impl.UserDAOIMPL;
import com.amdocs.project.model.Admin;
import com.amdocs.project.model.Contact;
import com.amdocs.project.model.Course;
import com.amdocs.project.model.Feedback;
import com.amdocs.project.model.User;

import java.sql.Date;

public class MainController {
    public static void main(String[] args) {
    	
    	UserDAO userDAO=new UserDAOIMPL();
    	//User user=new User("varun","varun@gmail.com","varun@123","amravati",123456789L,"img.jpg",999,"22-10-2020");
    	//userDAO.saveUser(user);
        

        userDAO.display();
        System.out.println("======================================");
        
       AdminDAO adminDAO= new AdminDAOIMPL();
      // Admin admin=new Admin("Shreyas","shreyas@gmail.com","admin@123");
       //adminDAO.loginAdmin(admin);

        adminDAO.display();
        System.out.println("======================================");
        CourseDAO courseDAO = new CourseDAOIMPL();
      //  Course course=new Course("course1","udemy","c++",1000);
       // courseDAO.saveCourse(course);
        courseDAO.display();
        System.out.println("======================================");
        FeedbackDAO feedbackDAO = new FeedbackDAOIMPL();
     //  Feedback feedback=new Feedback(999,"varun","varun@gmail.com","feedback given");
     //  feedbackDAO.saveFeedback(feedback);
        feedbackDAO.display();
        System.out.println("======================================");
        ContactDAO contactDAO= new ContactDAOIMPL();
        Contact contact= new Contact(99,"varun@gmail.com","varun",123456789L,"message given");
        contactDAO.saveContact(contact);
        contactDAO.display();
        System.out.println("======================================");
    }
}
