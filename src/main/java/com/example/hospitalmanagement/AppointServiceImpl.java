package com.example.hospitalmanagement;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class AppointServiceImpl implements AppointService {

    @Autowired
    AppointDao appointDao;
    @Override
    public void inserApt(Appointment appointment) {
        appointDao.insertAppoint(appointment);

    }
}
