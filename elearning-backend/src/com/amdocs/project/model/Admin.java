package com.amdocs.project.model;

public class Admin {
    private String Name;
    private String Email;
    private String Password;
    private int Admin_ID;

    private Admin(){}
    public Admin(int admin_ID, String email, String password ) {
        Admin_ID=admin_ID;
        Email = email;
        Password = password;
        
    }

    public Admin(String name, String email, String password ) {
        Name = name;
        Email = email;
        Password = password;
        
    }

    public String getName() {
        return Name;
    }

    public void setName(String name) {
        Name = name;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String email) {
        Email = email;
    }

    public String getPassword() {
        return Password;
    }

    public void setPassword(String password) {
        Password = password;
    }

    public int getAdmin_ID() {
        return Admin_ID;
    }

    public void setAdmin_ID(int admin_ID) {
        Admin_ID = admin_ID;
    }
}
