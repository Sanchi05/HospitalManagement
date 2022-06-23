package com.example.hospitalmanagement1.model;

public class Receptionist {
    int Employee_id;
    String Fullname;
    String Date_of_Birth;
    String Gender;
    String Email;
    String Phone_Number;
    String Address;
    String Degree;
    String Institute;
    String Year_of_Passing;
    String Percentage;
    String Job_Description;
    String From;
    String To;
    String Organization;

    public int getEmployee_id() {
        return Employee_id;
    }

    public void setEmployee_id(int employee_id) {
        Employee_id = employee_id;
    }

    public String getFullname() {
        return Fullname;
    }

    public void setFullname(String fullname) {
        Fullname = fullname;
    }

    public String getDate_of_Birth() {
        return Date_of_Birth;
    }

    public void setDate_of_Birth(String date_of_Birth) {
        Date_of_Birth = date_of_Birth;
    }

    public String getGender() {
        return Gender;
    }

    public void setGender(String gender) {
        Gender = gender;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String email) {
        Email = email;
    }

    public String getPhone_Number() {
        return Phone_Number;
    }

    public void setPhone_Number(String phone_Number) {
        Phone_Number = phone_Number;
    }

    public String getAddress() {
        return Address;
    }

    public void setAddress(String address) {
        Address = address;
    }

    public String getDegree() {
        return Degree;
    }

    public void setDegree(String degree) {
        Degree = degree;
    }

    public String getInstitute() {
        return Institute;
    }

    public void setInstitute(String institute) {
        Institute = institute;
    }

    public String getYear_of_Passing() {
        return Year_of_Passing;
    }

    public void setYear_of_Passing(String year_of_Passing) {
        Year_of_Passing = year_of_Passing;
    }

    public String getPercentage() {
        return Percentage;
    }

    public void setPercentage(String percentage) {
        Percentage = percentage;
    }

    public String getJob_Description() {
        return Job_Description;
    }

    public void setJob_Description(String job_Description) {
        Job_Description = job_Description;
    }

    public String getFrom() {
        return From;
    }

    public void setFrom(String from) {
        From = from;
    }

    public String getTo() {
        return To;
    }

    public void setTo(String to) {
        To = to;
    }

    public String getOrganization() {
        return Organization;
    }

    public void setOrganization(String organization) {
        Organization = organization;
    }


    @Override
    public String toString(){
        return "Receptionist [Employee_id= " + Employee_id + ", Fullname= " + Fullname + ", " +
                "Date_of_Birth= " + Date_of_Birth + ", Gender= " + Gender + ",Email=" + Email +"" +
                "Phone_Number= "+ Phone_Number + ", Address= " + Address + ",Degree= " + Degree +"" +
                "Institute= "+ Institute +", Year_of_Passing= "+ Year_of_Passing+ "Percentage= " + Percentage +"" +
                ", Job_Description= " + Job_Description + ", From= " + From + ", To= " + To + ", Organization= " + Organization + "]";
    }
}


