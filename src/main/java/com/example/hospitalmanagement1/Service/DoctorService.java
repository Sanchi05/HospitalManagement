package com.example.hospitalmanagement1.Service;

import com.example.hospitalmanagement1.model.Doctor;

import java.util.List;

public interface DoctorService {

    void insertDoctor(Doctor doctor);

    List<Doctor> getdoctor();
}
