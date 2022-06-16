package com.example.hospitalmanagement1.model;

import java.time.Year;
import java.util.Date;

public class Doctor {



    int Doctor_id;

    String Full_name;
    Date DOB;
    String Gender;
    String Address;
    String Specialization;
    String Degree;
    String Institute;
    Year Year;
    String CGPA;
    String Job_description;
    Date From;
    Date To;
    String Organization;



    public int getDoctor_id() {
        return Doctor_id;
    }

    public void setDoctor_id(int doctor_id) {
        Doctor_id = doctor_id;
    }

    public String getFull_name() {
        return Full_name;
    }

    public void setFull_name(String full_name) {
        Full_name = full_name;
    }

    public Date getDOB() {
        return DOB;
    }

    public void setDOB(Date DOB) {
        this.DOB = DOB;
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

    public java.time.Year getYear() {
        return Year;
    }

    public void setYear(java.time.Year year) {
        Year = year;
    }

    public String getCGPA() {
        return CGPA;
    }

    public void setCGPA(String CGPA) {
        this.CGPA = CGPA;
    }

    public String getJob_description() {
        return Job_description;
    }

    public void setJob_description(String job_description) {
        Job_description = job_description;
    }

    public Date getFrom() {
        return From;
    }

    public void setFrom(Date from) {
        From = from;
    }

    public Date getTo() {
        return To;
    }

    public void setTo(Date to) {
        To = to;
    }

    public String getOrganization() {
        return Organization;
    }

    public void setOrganization(String organization) {
        Organization = organization;
    }
}
