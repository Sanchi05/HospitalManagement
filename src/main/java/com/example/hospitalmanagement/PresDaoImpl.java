package com.example.hospitalmanagement;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.stereotype.Repository;

import javax.annotation.PostConstruct;
import javax.sql.DataSource;

@Repository
public class PresDaoImpl extends JdbcDaoSupport implements PresDao {

    @Autowired
    DataSource dataSource;



    @PostConstruct
    public void initialize(){
        setDataSource(dataSource);
    }

    @Override
    public void insertInto(Prescription pres) {
        String sql = "INSERT INTO prescription" +
                "(p_id,p_name,p_symptoms,p_diagnosis,p_donts,p_dos,p_meds,p_followup) " +
                " Values (?,?,?,?,?,?,?,?)";

        getJdbcTemplate().update(sql,new Object[]{
            pres.getP_id(),pres.getP_name(),pres.getP_symptoms(),pres.getP_diagnosis(),
                pres.getP_donts(),pres.getP_dos(),pres.getP_meds(),pres.getP_followup()
        });
    }

    @Override
    public Prescription displayFrom(int PId) {
        return null;
    }




}
