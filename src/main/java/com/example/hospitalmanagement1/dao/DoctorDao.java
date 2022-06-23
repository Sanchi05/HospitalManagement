package com.example.hospitalmanagement1.dao;

import com.example.hospitalmanagement1.model.Doctor;

import java.util.List;

public interface DoctorDao {

    void insertDoctor(Doctor doctor);


    List<Doctor> getdoctor();

}
