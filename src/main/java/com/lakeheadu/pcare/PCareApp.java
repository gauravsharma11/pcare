package com.lakeheadu.pcare;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.orm.jpa.vendor.HibernateJpaSessionFactoryBean;

@SpringBootApplication(scanBasePackages={"com.lakeheadu.pcare.utilities", "com.lakeheadu.pcare.dao","com.lakeheadu.pcare.models", "com.lakeheadu.pcare.services" , "com.lakeheadu.pcare.controllers"})
public class PCareApp {
	
	
	public static void main(String[] args) {
		SpringApplication.run(PCareApp.class, args);
		
	}
	
	@Bean
	public HibernateJpaSessionFactoryBean sessionFactory() {
	    return new HibernateJpaSessionFactoryBean();
	}
}
