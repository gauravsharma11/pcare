package com.lakeheadu.pcare.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table
public class Prescription {
	
	
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

	public String getPrescribedBy() {
		return prescribedBy;
	}

	public void setPrescribedBy(String prescribedBy) {
		this.prescribedBy = prescribedBy;
	}

	public String getPrescribedOn() {
		return prescribedOn;
	}

	public void setPrescribedOn(String prescribedOn) {
		this.prescribedOn = prescribedOn;
	}

}
