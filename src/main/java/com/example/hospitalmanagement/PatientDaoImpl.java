package com.example.hospitalmanagement;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import javax.annotation.PostConstruct;
import javax.sql.DataSource;

@Repository
public class PatientDaoImpl extends JdbcDaoSupport implements PatientDao{

    @Autowired
    DataSource dataSource1;
    @PostConstruct
    public void initialize(DataSource dataSource){
        setDataSource(dataSource1);
    }

    @Override
    public Patient findPatientById(int patient_id) {
        String sql = "SELECT * FROM patients where pt_id=101";
        return getJdbcTemplate().queryForObject(sql,new BeanPropertyRowMapper<>(Patient.class),new Object[]{
                patient_id
        });
        //System.out.println(patient);
        //return null;
        }


    }

