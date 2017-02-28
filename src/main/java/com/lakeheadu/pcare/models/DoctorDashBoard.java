package com.lakeheadu.pcare.models;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Component;


@Component
public class DoctorDashBoard {

	
	List<PatientsforDoctor> listOfPatients = new ArrayList<PatientsforDoctor>();
	
	User user;
	
	
	public List<PatientsforDoctor> getListOfPatients() {
		return listOfPatients;
	}
	public void setListOfPatients(List<PatientsforDoctor> listOfPatients2) {
		this.listOfPatients = listOfPatients2;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	
}
