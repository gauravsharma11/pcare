package com.lakeheadu.pcare.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.joda.time.LocalDate;

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
	private String speciality;

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
	private String contactNumber;
	
	@Column
	private String emailId;
	
	@Column
	private String password;
	
	@Column
	private String status;
	
//	@OneToMany
//	private List<Patient> patient;
	


	public Doctor()
	{
		
	}
	
	public Doctor(String name, String speciality, LocalDate localDate, boolean gender, String password, String address, String city,
			String province, String contactNumber, String emailId, String status) {
		super();
		this.name = name;
		this.speciality = speciality;
		this.dateOfBirth = localDate;
		this.gender = gender;
		this.password = password;
		this.address = address;
		this.city = city;
		this.province = province;
		this.contactNumber = contactNumber;
		this.emailId = emailId;
		this.status = status;
//		this.patient = patient;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSpeciality() {
		return speciality;
	}

	public void setSpeciality(String speciality) {
		this.speciality = speciality;
	}

	public int getId() {
		return id;
	}
	
	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
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
	
	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

/*	public List<Patient> getPatient() {
		return patient;
	}

	public void setPatient(List<Patient> patient) {
		this.patient = patient;
	}*/
	
}
