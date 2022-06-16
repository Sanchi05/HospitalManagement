package com.example.hospitalmanagement1.Service.Impl;

import com.example.hospitalmanagement1.Service.DoctorService;
import com.example.hospitalmanagement1.dao.DoctorDao;
import com.example.hospitalmanagement1.model.Doctor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DoctorServiceImpl implements DoctorService {

    @Autowired
    DoctorDao doctorDao;

    @Override
    public void insertDoctor(Doctor doctor) {
        doctorDao.insertDoctor(doctor);
    }


    @Override
    public List<Doctor> getAllDoctor(){
        return doctorDao.getAllDoctor();
    }
}
