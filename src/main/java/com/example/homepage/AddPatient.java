package com.example.homepage;

public class AddPatient {


 private String first_name;
 private String last_name;
 private int patient_id;
 private String date_of_birth;
 private String city;
 private String state;
 private String address;
 private int mobilenumber;
 private String gender;
 private String allergy;
 private String doctor_to_be_assigned;


    public void setFirst_name(String first_name) {
        this.first_name = first_name;
    }

    public String getFirst_name(){
        return first_name;
    }

    public String getLast_name() {
        return last_name;
    }

    public void setLast_name(String last_name) {
        this.last_name = last_name;
    }

    public int getPatient_id() {
        return patient_id;
    }

    public void setPatient_id(int patient_id) {
        this.patient_id = patient_id;
    }

    public String getDate_of_birth() {
        return date_of_birth;
    }

    public void setDate_of_birth(String date_of_birth) {
        this.date_of_birth = date_of_birth;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public int getMobilenumber() {
        return mobilenumber;
    }

    public void setMobilenumber(int mobilenumber) {
        this.mobilenumber = mobilenumber;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getAllergy() {
        return allergy;
    }

    public void setAllergy(String allergy) {
        this.allergy = allergy;
    }

    public String getDoctor_to_be_assigned() {
        return doctor_to_be_assigned;
    }

    public void setDoctor_to_be_assigned(String doctor_to_be_assigned) {
        this.doctor_to_be_assigned = doctor_to_be_assigned;
    }


 }
