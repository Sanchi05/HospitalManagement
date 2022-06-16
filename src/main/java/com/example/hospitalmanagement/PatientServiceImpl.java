package com.example.hospitalmanagement;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.persistence.Access;
@Service
public class PatientServiceImpl implements PatientService {

    @Autowired
    PatientDao patientDao;
    @Override
    public Patient findPatientById(int id) {
        return patientDao.findPatientById(id);
    }
}
