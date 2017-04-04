package com.lakeheadu.pcare.models;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table
public class Medical 
{
	
	@Id
	@Column
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	
	private boolean medicalRequest;
	
	@Column
	private Date startDate;
	
	@Column
	private Date endDate;
	
	@Column
	private String reason;
	
	@Column
	private String description;

	@OneToOne
	private Patient patient;
	
	@OneToOne
	private Doctor doctor;
	
	
	public Medical(){
		
	}
	
	public Medical(boolean medicalRequest, Date startDate, Date endDate, String reason, String description, Patient patient, Doctor doctor) {
		super();
		this.medicalRequest = medicalRequest;
		this.startDate = startDate;
		this.endDate = endDate;
		this.reason = reason;
		this.description = description;
		this.patient = patient;
		this.doctor = doctor;
	}
	
	public int getId() {
		return id;
	}

	public String getReason() {
		return reason;
	}

	public void setReason(String reason) {
		this.reason = reason;
	}

	public Date getStartDate() {
		return startDate;
	}
	
	public boolean isMedicalRequest() {
		return medicalRequest;
	}

	public void setMedicalRequest(boolean medicalRequest) {
		this.medicalRequest = medicalRequest;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

	public Date getEndDate() {
		return endDate;
	}

	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Patient getPatient() {
		return patient;
	}

	public void setPatient(Patient patient) {
		this.patient = patient;
	}

	public Doctor getDoctor() {
		return doctor;
	}

	public void setDoctor(Doctor doctor) {
		this.doctor = doctor;
	}
	
}
