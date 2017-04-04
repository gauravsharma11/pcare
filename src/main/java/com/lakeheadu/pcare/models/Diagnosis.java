package com.lakeheadu.pcare.models;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;


@Entity
@Table
public class Diagnosis 
{
	
	@Id
	@Column
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	
	@Column
	private String diagnosedAs;
	
	@Column
	private String symptoms;
	
	@Column
	private String history;
	
	@Column
	private Date visitDate;
	
	@ManyToOne
	private Patient patient;
	
	
	public String getDiagnosedAs() {
		return diagnosedAs;
	}

	public void setDiagnosedAs(String diagnosedAs) {
		this.diagnosedAs = diagnosedAs;
	}
	
	public String getSymptoms() {
		return symptoms;
	}

	public void setSymptoms(String symptoms) {
		this.symptoms = symptoms;
	}

	public String getHistory() {
		return history;
	}

	public void setHistory(String history) {
		this.history = history;
	}

	public Date getVisitDate() {
		return visitDate;
	}

	public void setVisitDate(Date visitDate) {
		this.visitDate = visitDate;
	}

	public Patient getPatient() {
		return patient;
	}

	public void setPatient(Patient patient) {
		this.patient = patient;
	}

}
