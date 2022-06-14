package com.example.hospitalmanagement1.Service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.example.hospitalmanagement1.dao.ContactDao;
import com.example.hospitalmanagement1.model.Contact;
import com.example.hospitalmanagement1.Service.ContactService;
import org.springframework.stereotype.Service;

@Service
public class ContactServiceImpl implements ContactService {

    @Autowired
    ContactDao contactDao;
    @Override
    public void insertContact(Contact cont) {
        contactDao.insertContact(cont);
    }

    @Override
    public List<Contact> getContact() {
        return null;
    }
}
