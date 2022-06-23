package com.example.hospitalmanagement1.Service.Impl;

import com.example.hospitalmanagement1.Service.ReceptionistService;
import com.example.hospitalmanagement1.dao.ReceptionistDao;
import com.example.hospitalmanagement1.model.Receptionist;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class ReceptionistServiceImpl implements ReceptionistService {

    @Autowired
    ReceptionistDao receptionistDao;

    @Override
    public void insertReceptionist(Receptionist receptionist){
        receptionistDao.insertReceptionist(receptionist);
    }


    @Override
    public List<Receptionist> getreceptionist(){
        return receptionistDao.getreceptionist();
    }
}
