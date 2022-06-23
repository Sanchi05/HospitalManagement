package com.example.hospitalmanagement;

public interface PresDao {

    void insertInto(Prescription pres);

    Prescription displayFrom(int PId);


}
