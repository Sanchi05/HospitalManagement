package com.example.hospitalmanagement1.dao.Impl;
import com.example.hospitalmanagement1.dao.ReceptionistDao;
import com.example.hospitalmanagement1.model.Receptionist;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.stereotype.Repository;
import javax.annotation.PostConstruct;
import javax.sql.DataSource;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Repository
public class ReceptionistDaoImpl extends JdbcDaoSupport implements ReceptionistDao {

    @Autowired
    DataSource dataSource;

    @PostConstruct
    public void initialize() { setDataSource(dataSource);}

    @Override
    public void insertReceptionist(Receptionist receptionist) {
        String sql= "INSERT into receptionists" +
                "(Employee_id, Fullname, Date_of_Birth, Gender," +
                "Email, Phone_Number, Address, Degree, Institute," +
                "Year_of_Passing ,Percentage, Job_Description,`From`, " +
                "`To`, `Organization`) Values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        getJdbcTemplate().update(sql, new Object[]{
                receptionist.getEmployee_id(),receptionist.getFullname(),
                receptionist.getDate_of_Birth(), receptionist.getGender(),
                receptionist.getEmail(), receptionist.getPhone_Number(),receptionist.getAddress(),
                receptionist.getDegree(), receptionist.getInstitute(), receptionist.getYear_of_Passing(),
                receptionist.getPercentage(), receptionist.getJob_Description(), receptionist.getFrom(),
                receptionist.getTo(), receptionist.getOrganization()
        });
    }

    @Override
    public List<Receptionist> getAllReceptionist(){
        String sql="SELECT * FROM receptionists";
        List<Map<String, Object>> rows =getJdbcTemplate().queryForList(sql);
        List<Receptionist> result = new ArrayList<>();

        for (Map<String, Object> row:rows){
            Receptionist receptionist = new Receptionist();
            receptionist.setEmployee_id((int) row.get("Employee_id"));
            receptionist.setFullname((String) row.get("Fullname"));
            receptionist.setDate_of_Birth((String) row.get("Date_of_Birth"));
            receptionist.setGender((String) row.get("Gender"));
            receptionist.setEmail((String) row.get("Email"));
            receptionist.setPhone_Number((String) row.get("Phone_Number"));
            receptionist.setAddress((String) row.get("Address"));
            receptionist.setDegree((String) row.get("Degree"));
            receptionist.setInstitute((String) row.get("Institute"));
            receptionist.setYear_of_Passing((String) row.get("Year_of_Passing"));
            receptionist.setPercentage((String) row.get("Percentage"));
            receptionist.setJob_Description((String) row.get("Job_Description"));
            receptionist.setFrom((String) row.get("From"));
            receptionist.setTo((String) row.get("To"));
            receptionist.setOrganization((String) row.get("Organization"));

        }
        return result;
    }
}
