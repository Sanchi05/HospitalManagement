package com.example.hospitalmanagement1.Service;

import java.util.List;

import com.example.hospitalmanagement1.model.Contact;

public interface ContactService {

    void insertContact(Contact cont);
    
    List<Contact> getContact();
}
