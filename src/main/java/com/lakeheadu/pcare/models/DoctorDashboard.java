package com.lakeheadu.pcare.models;

import java.util.ArrayList;
import java.util.Collection;
import org.springframework.stereotype.Component;

@Component
public class DoctorDashboard {
	
	private Collection<Patient> patients = new ArrayList<Patient>();
	private User user;
	
	public Collection<Patient> getPatients() {
		return patients;
	}
	public void setPatients(Collection<Patient> patients) {
		this.patients = patients;
	}
	
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	
}
