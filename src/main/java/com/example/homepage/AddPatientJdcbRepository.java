package com.example.homepage;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import javax.servlet.http.HttpServlet;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Optional;
@Repository
public class AddPatientJdcbRepository {

    @Autowired
    JdbcTemplate jdbcTemplate;
    static  class  AddPatientRowMapper extends HttpServlet implements RowMapper<AddPatient>{


        @Override
        public AddPatient mapRow(ResultSet rs,int rowNum) throws SQLException {

            AddPatient addpatient = new AddPatient();
            addpatient.setFirst_name(rs.getString("first_name"));
            addpatient.setLast_name(rs.getString("last_name"));
            addpatient.setPatient_id(rs.getInt("patient_id"));
            addpatient.setDate_of_birth(rs.getString("date_of_birth"));
            addpatient.setCity(rs.getString("city"));
            addpatient.setState(rs.getString("state"));
            addpatient.setAddress(rs.getString("address"));
            addpatient.setMobilenumber(rs.getInt("mobilenumber"));
            addpatient.setGender(rs.getString("gender"));
            addpatient.setAllergy(rs.getString("allergy"));
            addpatient.setDoctor_to_be_assigned(rs.getString("doctor_to_be_assigned"));
            return addpatient;



        }

    }
    public List<AddPatient> findAll() {
        return jdbcTemplate.query("select * from addpatient",new AddPatientRowMapper());


    }

    public Optional<AddPatient> findByPatient_Id(int Patient_Id) {
        return Optional.of(jdbcTemplate.queryForObject("select * from addpatient where patient_id=?", new BeanPropertyRowMapper<>(AddPatient.class),
                Patient_Id));

    }

    public int insert(AddPatient addpatient) {
        return jdbcTemplate.update("insert into addpatient (first_name,last_name,patient_id,date_of_birth,city,`state`,address,mobilenumber,gender,allergy,doctor_to_be_assigned)" + "values (?,?,?,?,?,?,?,?,?,?,?)",
                new Object[]{
                        addpatient.getFirst_name(),addpatient.getLast_name(),addpatient.getPatient_id(),addpatient.getDate_of_birth(),addpatient.getCity(),addpatient.getState(),addpatient.getAddress(),addpatient.getMobilenumber(),addpatient.getGender(),addpatient.getAllergy(),addpatient.getDoctor_to_be_assigned()
                });
    }
    public int update(AddPatient addpatient){
        return jdbcTemplate.update("update addpatient" + "set first_name =? , last_name=? , patient_id=? , date_of_birth=? , city=?, state = ? ,address=?,mobilenumber=? , gender=?,allergy=?,doctor_to_be_assigned=? ",
                new Object[]{
                        addpatient.getFirst_name(),addpatient.getLast_name(),addpatient.getPatient_id(),addpatient.getDate_of_birth(),addpatient.getCity(),addpatient.getState(),addpatient.getAddress(),addpatient.getMobilenumber(),addpatient.getGender(),addpatient.getAllergy(),addpatient.getDoctor_to_be_assigned()
                });
    }
}




