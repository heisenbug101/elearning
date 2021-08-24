package com.amdocs.project.dao.impl;

import com.amdocs.project.dao.UserDAO;
import com.amdocs.project.db.DBUtils;
import com.amdocs.project.model.Admin;
import com.amdocs.project.model.User;

import java.sql.*;

public class UserDAOIMPL implements UserDAO {
    Connection conn= DBUtils.getConn();
    @Override
    public boolean create() {
        String query="create table user1(user_id int primary key auto_increment, name varchar(100),phone_no int8, email varchar(100), address varchar(100), reg_date varchar(100), password varchar(100), upload_photo long)";
        try{
            Statement stmt=conn.createStatement();
            stmt.executeUpdate(query);
            return true;
        }
        catch (Exception e){
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean display() {
        String display="select * from user1";
        try{
            Statement stmt=conn.createStatement();
            ResultSet data=stmt.executeQuery(display);
            while (data.next())
            {
                long phone=data.getLong(3);
                int user_ID=data.getInt(1);
                String name=data.getNString(2);
                String email=data.getNString(4);
                String address=data.getNString(5);
                String date=data.getNString(6);
                String password=data.getNString(7);
                String image=data.getNString(8);
                System.out.println("User_ID : "+user_ID+"\tName : "+name+"\tPhone : "+phone+"\tEmail : "+email+"\tAddress : "+address+"\tAddress : "+address+"\tDate : "+date+"\tPassword : "+password+"\tUpload_Image : "+image);
            }
            return true;
        }
        catch (SQLException e){
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean saveUser(User user) {
        String insert = "insert into user1 values(?,?,?,?,?,?,?,?)";
        try{
            PreparedStatement ps= conn.prepareStatement(insert);
            ps.setNString(2,user.getName());
            ps.setInt(1,user.getUser_ID());
            ps.setNString(4,user.getEmail());
            ps.setLong(3,user.getPhone());
            ps.setNString(5,user.getAddress());
            ps.setNString(6,user.getDate());
            ps.setNString(7,user.getPassword());
            ps.setNString(8,user.getUpload_Image());
            ps.executeUpdate();
            return true;
        }
        catch (SQLException e){
            e.printStackTrace();
        }
        return false;
    }
    
    @Override
    public boolean loginUser(User user) {
    	boolean stat=false;
    	 String login = "select * from user1 where email=? and password=?  ";
         try{
        	  PreparedStatement ps= conn.prepareStatement(login);
              
              ps.setNString(1,user.getEmail());
              ps.setNString(2,user.getPassword());
              ResultSet rs=ps.executeQuery();
              
             stat= rs.next();
             return stat;
         }
         catch (SQLException e){
             e.printStackTrace();
         }
         return stat;
    }
    
   

    @Override
    public boolean delete(int userid) {
    	
        String query="delete from user1 where user_id=?";
        try{
            PreparedStatement ps= conn.prepareStatement(query);
            ps.setInt(1,userid);
            ps.executeUpdate();
            
            
            return true;
        }
        catch (SQLException e){
            e.printStackTrace();
        }
        return false;
    }
    
    @Override
	public boolean update(User user) {
		String update="Update user1 set name=?,phone_no=?,email=?,address=?,reg_date=?,password=?,upload_photo=? where user_id=?";
		try {
		 PreparedStatement ps = conn.prepareStatement(update);
		  ps.setNString(1,user.getName());
          ps.setInt(8,user.getUser_ID());
          ps.setNString(3,user.getEmail());
          ps.setLong(2,user.getPhone());
          ps.setNString(4,user.getAddress());
          ps.setNString(5,user.getDate());
          ps.setNString(6,user.getPassword());
          ps.setNString(7,user.getUpload_Image());
		ps.executeUpdate();
		return true;
		}
		catch(SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
}
