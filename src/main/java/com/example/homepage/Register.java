package com.example.homepage;




public class Register {



    private String role;
    private int username;
    private String password;

    public Register() {

    }

    public Register(String role, int username, String password){
        this.role = role;
        this.username=username;
        this.password=password;

    }

    public String getRole(){
        return role;
    }
    public void setRole(String role){
        this.role=role;
    }
    public int getUsername(){
        return username;
    }
    public void setUsername(int username){
        this.username=username;
    }
    public String getPassword(){
       return password;
    }
    public void setPassword(String password){
        this.password=password;

    }
}