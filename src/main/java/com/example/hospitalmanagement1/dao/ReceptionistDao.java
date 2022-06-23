package com.example.hospitalmanagement1.dao;

import com.example.hospitalmanagement1.model.Receptionist;

import java.util.List;

public interface ReceptionistDao {

    void insertReceptionist(Receptionist receptionist);


    List<Receptionist> getreceptionist();

}
