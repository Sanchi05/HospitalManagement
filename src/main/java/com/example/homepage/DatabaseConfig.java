package com.example.homepage;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

import javax.sql.DataSource;

@Configuration
public class DatabaseConfig {
    @Bean
    public DataSource dataSource(){
        DriverManagerDataSource dataSource= new DriverManagerDataSource();

        dataSource.setUrl("jdbc:mysql://localhost:3306/hospital");
        dataSource.setUsername("root");
        dataSource.setPassword("Password@123");
        return dataSource;
    }
}
