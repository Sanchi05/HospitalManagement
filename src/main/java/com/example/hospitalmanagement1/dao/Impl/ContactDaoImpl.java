package com.example.hospitalmanagement1.dao.Impl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import javax.annotation.PostConstruct;
import javax.sql.DataSource;

import org.jetbrains.annotations.NotNull;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.dao.support.DaoSupport;

import com.example.hospitalmanagement1.dao.ContactDao;
import com.example.hospitalmanagement1.model.Contact;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.stereotype.Repository;

@Repository
public class ContactDaoImpl extends JdbcDaoSupport implements ContactDao{


@Autowired
DataSource dataSource;
    @PostConstruct
    public void initialize(){
        setDataSource(dataSource);
    }

    @Override
    public void insertContact(Contact cont) {
        String sql = "INSERT INTO queries " +
                "(Fullname, Email, Address, City, Messagetype, Subject, Message) " +
                "VALUES (?,?,?,?,?,?,?)" ;
        getJdbcTemplate().update(sql, new Object[]{
                cont.getFullname(), cont.getEmail(),
                cont.getAddress(), cont.getCity(), cont.getMessageType(),
                cont.getSubject(), cont.getMessage()
        });
    }

    @Override
    public List<Contact> getContact() {
        return null;
    }
}
