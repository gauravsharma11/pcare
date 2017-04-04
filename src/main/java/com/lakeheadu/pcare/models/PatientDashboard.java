package com.lakeheadu.pcare.models;

import java.util.ArrayList;
import java.util.Collection;

import org.springframework.stereotype.Component;

@Component
public class PatientDashboard {

	private Collection<Doctor> doctors = new ArrayList<Doctor>();
	private Patient patient;
	private User user;
	
	public Collection<Doctor> getDoctors() {
		return doctors;
	}

	public void setDoctors(Collection<Doctor> doctors) {
		this.doctors = doctors;
	}
	
	public Patient getPatient() {
		return patient;
	}

	public void setPatient(Patient patient) {
		this.patient = patient;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

}
