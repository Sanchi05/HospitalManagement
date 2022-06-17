package com.example.homepage;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ImportResource;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import javax.servlet.http.HttpServlet;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Optional;

@ImportResource("classpath:beans.xml")
@Repository
public class RegisterJdbcRepository {

@ Autowired
JdbcTemplate jdbcTemplate;
    static class LoginRowMapper extends HttpServlet implements RowMapper<Register> {
        @Override
        public Register mapRow(ResultSet rs, int rowNum) throws SQLException {
            Register login = new Register();
            login.setRole(rs.getString("role"));
            login.setUsername(rs.getInt("username"));
            login.setPassword(rs.getString("password"));
            return login;

        }

    }

    public List<Register> findAll() {
        return jdbcTemplate.query("select * from login", new LoginRowMapper());


    }

    public Optional<Register> findByUsername(int username) {
        return Optional.of(jdbcTemplate.queryForObject("select * from login where username=?", new BeanPropertyRowMapper<>(Register.class),
                username));

    }

    public int insert(Register login) {
        System.out.println("fsfsggre");
        return jdbcTemplate.update("insert into login (role,username,password)" + "values(?,?,?)",
                new Object[]{
                      login.getRole() , login.getUsername(), login.getPassword()
                });
    }

    public int update(Register login){
        return jdbcTemplate.update("update login" + "set role = ?, username= ?, password = ?",
                new Object[]{
                        login.getRole(), login.getUsername(), login.getPassword()
                });

    }


  public int loginuser(Login login){
    String sql = ("SELECT username from login where username=? and password=?");
    try{
        int name = jdbcTemplate.queryForObject(sql,int.class,new Object[]{
                login.getUsername(),login.getPassword()
        });
        return name;

        }catch (Exception e){
        return 0;
    }
}


  }










