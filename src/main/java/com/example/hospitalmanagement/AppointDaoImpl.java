package com.example.hospitalmanagement;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.stereotype.Repository;

import javax.annotation.PostConstruct;
import javax.sql.DataSource;

@Repository
public class AppointDaoImpl extends JdbcDaoSupport implements AppointDao {

    @Autowired
    DataSource dataSource;

    @PostConstruct
    public void initialize(){
        setDataSource(dataSource);
    }

    @Override
    public void insertAppoint(Appointment appt) {
        String sql = "INSERT INTO appointments" +
                "(apt_id,apt_name,apt_time,apt_date,apt_comments,apt_doctorasg) " +
                " Values (?,?,?,?,?,?)";

        getJdbcTemplate().update(sql,new Object[]{
                appt.getApt_id(), appt.getApt_name(),appt.getApt_time(),appt.getApt_date(),
                appt.getApt_comments(),appt.getApt_doctorasg(),
        });

    }
}
