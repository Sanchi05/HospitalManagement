package com.example.hospitalmanagement;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PresServiceImpl implements PresService{

    @Autowired
    PresDao presDao;
    @Override
    public void insertPres(Prescription prescription) {
        presDao.insertInto(prescription);
    }

    @Override
    public Prescription displayFrom(int PId) {
        return presDao.displayFrom(PId);
    }

}
