package com.example.hospitalmanagement1.model;

public class Doctor {
    int Doctor_id;
    String Fullname;
    String Date_of_Birth;
    String Gender;
    String Address;
    String Specialization;
    String Degree;
    String Institute;
    String Year_of_Passing;
    String CGPA;
    String Job_Description;
    String From;
    String To;
    String Organization;


    public String getYear_of_Passing() {
        return Year_of_Passing;
    }

    public void setYear_of_Passing(String year_of_Passing) {
        Year_of_Passing = year_of_Passing;
    }

    public int getDoctor_id() {
        return Doctor_id;
    }

    public void setDoctor_id(int doctor_id) {
        Doctor_id = doctor_id;
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

    public String getAddress() {
        return Address;
    }

    public void setAddress(String address) {
        Address = address;
    }

    public String getSpecialization() {
        return Specialization;
    }

    public void setSpecialization(String specialization) {
        Specialization = specialization;
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

    public String getCGPA() {
        return CGPA;
    }

    public void setCGPA(String CGPA) {
        this.CGPA = CGPA;
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
        return "Doctor [Doctor_id=" + Doctor_id + ", Fullname=" + Fullname + ", " +
                "Date_of_Birth=" + Date_of_Birth + ", Gender=" + Gender + ",Address=" + Address +"" +
                "Specialization= "+ Specialization + ", Degree= " + Degree + ",Institute= " + Institute +"" +
                "Year_of_Passing= "+ Year_of_Passing+ "CGPA= " + CGPA +", Job_Description= " + Job_Description + "" +
                ", From= " + From + ", To= " + To + ", Organization= " + Organization + "]";
    }
}
