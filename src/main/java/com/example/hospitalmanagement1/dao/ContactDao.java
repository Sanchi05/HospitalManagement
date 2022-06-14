package com.example.hospitalmanagement1.dao;

import java.util.List;

import com.example.hospitalmanagement1.model.Contact;

public interface ContactDao {
    void insertContact(Contact cont);
    List<Contact> getContact();
}
