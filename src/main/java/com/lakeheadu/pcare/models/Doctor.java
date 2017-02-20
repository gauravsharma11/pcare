package com.lakeheadu.pcare.models;

import java.time.LocalDate;
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
public class Doctor {
	
	@Id
	@Column
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;

	@Column
	private String name;

	@Column
	private int age;

	@Column
	private LocalDate dateOfBirth;

	@Column
	private boolean gender;

	@Column
	private String address;

	@Column
	private String city;

	@Column
	private String province;

	@Column
	private int visits;

	@Column
	private String contactNumber;
	
	@Column
	private String emailId;
	
	@OneToMany
	private List<Patient> patient;
	
	public Doctor(String name, int age, LocalDate dateOfBirth, boolean gender, String address, String city,
			String province, int visits, String contactNumber, String emailId, List<Patient> patient) {
		super();
		this.name = name;
		this.age = age;
		this.dateOfBirth = dateOfBirth;
		this.gender = gender;
		this.address = address;
		this.city = city;
		this.province = province;
		this.visits = visits;
		this.contactNumber = contactNumber;
		this.emailId = emailId;
		this.patient = patient;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public LocalDate getDateOfBirth() {
		return dateOfBirth;
	}

	public void setDateOfBirth(LocalDate dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}

	public boolean isGender() {
		return gender;
	}

	public void setGender(boolean gender) {
		this.gender = gender;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getProvince() {
		return province;
	}

	public void setProvince(String province) {
		this.province = province;
	}

	public int getVisits() {
		return visits;
	}

	public void setVisits(int visits) {
		this.visits = visits;
	}

	public String getContactNumber() {
		return contactNumber;
	}

	public void setContactNumber(String contactNumber) {
		this.contactNumber = contactNumber;
	}

	public String getEmailId() {
		return emailId;
	}

	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}

	public List<Patient> getPatient() {
		return patient;
	}

	public void setPatient(List<Patient> patient) {
		this.patient = patient;
	}
	
}
