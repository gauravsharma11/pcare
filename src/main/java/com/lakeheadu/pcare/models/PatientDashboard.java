package com.lakeheadu.pcare.models;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Component;

@Component
public class PatientDashboard {

	List<Doctor> listOfDoctors = new ArrayList<Doctor>();

	

	public List<Doctor> getListOfDoctors() {
		return listOfDoctors;
	}

	public void setListOfDoctors(List<Doctor> listOfDoctors) {
		this.listOfDoctors = listOfDoctors;
	}

	User user;

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

}
