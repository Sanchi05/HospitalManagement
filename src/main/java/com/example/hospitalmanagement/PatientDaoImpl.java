package com.example.hospitalmanagement;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.support.JdbcDaoSupport;

public class PatientDaoImpl extends JdbcDaoSupport implements PatientDao{

    @Override
    public Patient findPatientById(int patient_id) {
        try{
            String sql = "SELECT * FROM WHERE pt_id = ?";
            Patient patient = getJdbcTemplate().queryForObject(sql,new BeanPropertyRowMapper<>(Patient.class),new Object[]{patient_id
            });
            return patient;
        } catch (Exception e){
            return null;
        }

    }
}
