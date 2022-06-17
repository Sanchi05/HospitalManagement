package com.example.homepage;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;

import java.util.List;

@SpringBootApplication (exclude = {DataSourceAutoConfiguration.class })
public class HomePageApplication implements CommandLineRunner {
	private Logger logger = LoggerFactory.getLogger(this.getClass());

	@Autowired
	private RegisterJdbcRepository loginRepository;

	@Override
	public void run(String... args) throws Exception {

		logger.info("Inserting -> {}", loginRepository.insert(new Register("Receptionist", 101, "Pralhad")));
		logger.info("Inserting -> {}", loginRepository.insert(new Register("Receptionist", 102, "Rushiki")));
		logger.info("Inserting -> {}", loginRepository.insert(new Register("Doctor", 201, "Akash")));
		logger.info("All users -> {}", loginRepository.findAll());
		List<Register> loginList = loginRepository.findAll();
		System.out.println(loginList.get(2).getPassword());

	}

	public static void main(String[] args) {
		SpringApplication.run(HomePageApplication.class, args);

	}
}


