package com.lakeheadu.pcare.models;

import java.util.ArrayList;
import java.util.Collection;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;
import org.joda.time.LocalDate;

@Entity
@Table(name="DOCTOR")
public class Doctor {
	
	@Id
	@Column(name="DOCTOR_ID")
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
	
	@ManyToMany(cascade = {CascadeType.MERGE})
	@JoinTable(name="DOCTOR_PATIENT", joinColumns={@JoinColumn(name="DOCTOR_ID")}, inverseJoinColumns={@JoinColumn(name="PATIENT_ID")})
	private Collection<Patient> patientsList = new ArrayList<Patient>();
	
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
		
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	public Collection<Patient> getPatientsList() {
		return patientsList;
	}

	public void setPatientsList(Collection<Patient> patientsList) {
		this.patientsList = patientsList;
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
	
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result
		        + ((emailId == null) ? 0 : emailId.hashCode());
		return result;
	}

    @Override
    public boolean equals(final Object obj) {
        if (this == obj)
            return true;
        if (obj == null)
            return false;
        if (getClass() != obj.getClass())
            return false;
        final Doctor other = (Doctor) obj;
        if (emailId == null) {
            if (other.emailId != null)
                return false;
        } else if (!emailId.equals(other.emailId))
            return false;
        return true;
    }

}
