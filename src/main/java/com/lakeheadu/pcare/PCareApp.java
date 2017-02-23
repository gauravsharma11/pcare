package com.lakeheadu.pcare;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
//lsof -w -n -i tcp:8080 kill -9 <process id>
@SpringBootApplication(scanBasePackages={"com.lakeheadu.pcare.dao","com.lakeheadu.pcare.models", "com.lakeheadu.pcare.services" , "com.lakeheadu.pcare.controllers"})
public class PCareApp {
	
	public static void main(String[] args) {
		SpringApplication.run(PCareApp.class, args);
	}

}
