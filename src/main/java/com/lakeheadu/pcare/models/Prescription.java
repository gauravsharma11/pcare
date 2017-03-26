package com.lakeheadu.pcare.models;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.codehaus.jackson.annotate.JsonIgnore;

@Entity
@Table
public class Prescription {
	
	@Id
	@Column(name="prescriptionId")
	private String prescriptionId;
	
	@Transient
	private String patientId;
	
	@Column
	private String visitDate;
	
	@Transient
	private String prescribedById;
	
	@Column
	private String startDate;
	
	@Column
	private String endDate;
	
	@Column
	private String prescribedOn;
	
	@Column
	private String url;
	
	@JsonIgnore
	@ManyToOne(cascade=CascadeType.ALL)
	private Patient patient;

	@JsonIgnore
	@ManyToOne(cascade=CascadeType.ALL)
	private Doctor doctor;
	
	@OneToMany(cascade=CascadeType.ALL)
	private List<Drug> drugs = new ArrayList<Drug>(); 
	
	
	public List<Drug> getDrugs() {
		return drugs;
	}

	public void setDrugs(List<Drug> drugs) {
		this.drugs = drugs;
	}

	public Doctor getDoctor() {
		return doctor;
	}

	public void setDoctor(Doctor doctor) {
		this.doctor = doctor;
	}

	public String getPatientId() {
		return patientId;
	}

	public void setPatientId(String patientId) {
		this.patientId = patientId;
	}

	public String getPrescribedOn() {
		return prescribedOn;
	}

	public void setPrescribedOn(String prescribedOn) {
		this.prescribedOn = prescribedOn;
	}
	
	public Patient getPatient() {
		return patient;
	}

	public void setPatient(Patient patient) {
		this.patient = patient;
	}

	public String getPrescriptionId() {
		return prescriptionId;
	}

	public void setPrescriptionId(String prescriptionId) {
		this.prescriptionId = prescriptionId;
	}
	
	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}


	public String getVisitDate() {
		return visitDate;
	}

	public void setVisitDate(String visitDate) {
		this.visitDate = visitDate;
	}

	public String getStartDate() {
		return startDate;
	}

	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}

	public String getEndDate() {
		return endDate;
	}

	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}

	public String getPrescribedById() {
		return prescribedById;
	}

	public void setPrescribedById(String prescribedById) {
		this.prescribedById = prescribedById;
	}
}
