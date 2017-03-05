package com.lakeheadu.pcare.models;

import java.util.ArrayList;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table
public class Prescription {


	private String prescriptionId;
	private String visitDate;
	private String prescribedByID;
	private String startDate;
	private String endDate;
	private ArrayList<String> listOfDrugs = new ArrayList<String>();
	
	
	@Id
	@Column
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int Id;

	@Column
	private String drugName;
	
	@Column
	private String form;
	
	@Column
	private String strength;
	
	@Column
	private String directions;
	
	@Column
	private String prescribedBy;
	
	@Column
	private String prescribedOn;

	public String getDrugName() {
		return drugName;
	}

	public void setDrugName(String drugName) {
		this.drugName = drugName;
	}

	public String getForm() {
		return form;
	}

	public void setForm(String form) {
		this.form = form;
	}

	public String getStrength() {
		return strength;
	}

	public void setStrength(String strength) {
		this.strength = strength;
	}

	public String getDirections() {
		return directions;
	}

	public void setDirections(String directions) {
		this.directions = directions;
	}


	public String getPrescribedOn() {
		return prescribedOn;
	}

	public void setPrescribedOn(String prescribedOn) {
		this.prescribedOn = prescribedOn;
	}


	
	String patientId;

	public String getPatientId() {
		return patientId;
	}

	public void setPatientId(String patientId) {
		this.patientId = patientId;
	}

	public String getPrescriptionId() {
		return prescriptionId;
	}

	public void setPrescriptionId(String prescriptionId) {
		this.prescriptionId = prescriptionId;
	}

	public String getVisitDate() {
		return visitDate;
	}

	public void setVisitDate(String visitDate) {
		this.visitDate = visitDate;
	}

	public String getPrescribedBy() {
		return prescribedBy;
	}

	public void setPrescribedBy(String prescribedBy) {
		this.prescribedBy = prescribedBy;
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

	public ArrayList<String> getListOfDrugs() {
		return listOfDrugs;
	}

	public void setListOfDrugs(ArrayList<String> listOfDrugs) {
		this.listOfDrugs = listOfDrugs;
	}
	
	public String getPrescribedByID() {
		return prescribedByID;
	}

	public void setPrescribedByID(String prescribedByID) {
		this.prescribedByID = prescribedByID;
	}

	

}
