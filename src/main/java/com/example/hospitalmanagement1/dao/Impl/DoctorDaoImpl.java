package com.example.hospitalmanagement1.dao.Impl;

import com.example.hospitalmanagement1.dao.DoctorDao;
import com.example.hospitalmanagement1.model.Doctor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.parsing.EmptyReaderEventListener;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.stereotype.Repository;

import javax.annotation.PostConstruct;
import javax.sql.DataSource;
import java.time.Year;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

@Repository
public class DoctorDaoImpl extends JdbcDaoSupport implements DoctorDao {
    @Autowired
    DataSource dataSource;

    @PostConstruct
    public void intialize(){
        setDataSource(dataSource);
    }

    @Override
    public void insertDoctor(Doctor doctor) {
        String sql = "INSERT into doctors" +
                "(Doctor_id,Fullname , Date_Of_Birth, Gender, " +
                "Specialization, Address, Degree, Institute_name, Year_Of_Passing ,CGPA, Job_Description, From, To, Organization) Values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        getJdbcTemplate().update(sql, new Object[]{
                doctor.getDoctor_id(), doctor.getFull_name(), doctor.getDOB(), doctor.getGender(),
                doctor.getSpecialization(), doctor.getAddress(), doctor.getDegree(), doctor.getInstitute(),
                doctor.getInstitute(), doctor.getYear(), doctor.getCGPA(), doctor.getJob_description(), doctor.getFrom(),
                doctor.getTo(), doctor.getOrganization()
        });
    }

    @Override
    public List<Doctor> getAllDoctor(){
        String sql="SELECT * FROM doctors";
        List<Map<String, Object>> rows =getJdbcTemplate().queryForList(sql);

        List<Doctor> result = new ArrayList<>();
        for(Map<String, Object> row:rows) {
            Doctor doctor = new Doctor();
            doctor.setDoctor_id((int) row.get("Doctor_id"));
            doctor.setFull_name((String) row.get("Fullname"));
            doctor.setDOB((Date) row.get("Date_Of_Birth"));
            doctor.setGender((String) row.get("Gender"));
            doctor.setAddress((String) row.get("Address"));
            doctor.setSpecialization((String) row.get("Specialization"));
            doctor.setDegree((String) row.get("Degree"));
            doctor.setInstitute((String) row.get("Institute"));
            doctor.setYear((Year) row.get("Year"));
            doctor.setCGPA((String) row.get("CGPA"));
            doctor.setJob_description((String) row.get("Job_description"));
            doctor.setFrom((Date) row.get("From"));
            doctor.setTo((Date) row.get("To"));
            doctor.setOrganization((String) row.get("Organization"));
        }
        return result;
    }

}
