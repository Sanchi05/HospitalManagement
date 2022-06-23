package com.example.hospitalmanagement1.Service;

import com.example.hospitalmanagement1.model.Receptionist;

import java.util.List;

public interface ReceptionistService {

    void insertReceptionist(Receptionist receptionist);

    List<Receptionist> getreceptionist();
}
