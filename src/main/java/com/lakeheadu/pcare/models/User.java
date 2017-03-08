package com.lakeheadu.pcare.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="USER")
public class User 
{
	@Id
	@Column
	private String emailId;
	
	@Column
	private String password;
	
	@Column
	private String userType;
	
	@Column
	private String name;
	
	@OneToOne
	private Doctor doctor;
	
	@OneToOne
	private Patient patient;
	
	public String getEmailId() {
		return emailId;
	}

	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getUserType() {
		return userType;
	}

	public void setUserType(String userType) {
		this.userType = userType;
	}
	
	public Doctor getDoctor() {
		return doctor;
	}

	public void setDoctor(Doctor doctor) {
		this.doctor = doctor;
	}

	public Patient getPatient() {
		return patient;
	}

	public void setPatient(Patient patient) {
		this.patient = patient;
	}

	public void setName(String name) {
		this.name = name;
	}

	
	public String getName() {
		return name;
	}
	
	public User(){
		
	}

	public User(String emailId, String password, String userType, String name) {
		super();
		this.emailId = emailId;
		this.password = password;
		this.userType = userType;
		this.name = name;
	}

}
