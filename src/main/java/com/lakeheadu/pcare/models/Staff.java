package com.lakeheadu.pcare.models;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table
public class Staff {
	
	@Id
	@Column
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int Id;
	
	@Column
	private String name;
	
	@OneToMany
	private List<Patient> patient;
	
	@OneToMany
	private List<Doctor> doctor;
	
	public Staff()
	{
		
	}

	public Staff(String name, List<Patient> patient, List<Doctor> doctor) {
		super();
		this.name = name;
		this.patient = patient;
		this.doctor = doctor;
	}
	
}
