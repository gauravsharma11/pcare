package com.lakeheadu.pcare.models;

import java.util.ArrayList;
import java.util.Collection;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.joda.time.LocalDate;

@Entity
@Table(name="PATIENT")
public class Patient
{
	
	@Id
	@Column(name="PATIENT_ID")
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
	private String emailId;
	
	@Column
	private String password;

	@Column
	private String province;

	@Column
	private int visits;

	@Column
	private String contactNumber;
	
	@OneToOne
	private Medical medical;
	
	@Column
	private String diagnosis;
	
	@ManyToMany(mappedBy="patientsList", fetch = FetchType.LAZY)
	private Collection<Doctor> doctorsList = new ArrayList<Doctor>();
	
	@OneToMany(cascade = {CascadeType.MERGE}, mappedBy="patient")
	private Collection<Prescription> prescriptionList = new ArrayList<Prescription>();
	
	public Patient()
	{
		
	}
	
	public Patient(String name, int age, LocalDate localDate, boolean gender, String password, String address, String city,
			String emailId, String province, int visits, String contactNumber, String diagnosis) {
		super();
		this.name = name;
		this.age = age;
		this.dateOfBirth = localDate;
		this.gender = gender;
		this.password = password;
		this.address = address;
		this.city = city;
		this.emailId = emailId;
		this.province = province;
		this.visits = visits;
		this.contactNumber = contactNumber;
		this.diagnosis = diagnosis;
	}
	
	public int getId() {
		return id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	public String getDiagnosis() {
		return diagnosis;
	}

	public void setDiagnosis(String diagnosis) {
		this.diagnosis = diagnosis;
	}
	
	public Collection<Doctor> getDoctorsList() {
		return doctorsList;
	}

	public void setDoctorsList(Collection<Doctor> doctorsList) {
		this.doctorsList = doctorsList;
	}
	
	public Collection<Prescription> getPrescriptionList() {
		return prescriptionList;
	}

	public void setPrescriptionList(Collection<Prescription> prescriptionList) {
		this.prescriptionList = prescriptionList;
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
	
	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getEmailId() {
		return emailId;
	}

	public void setEmailId(String emailId) {
		this.emailId = emailId;
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
        final Patient other = (Patient) obj;
        if (emailId == null) {
            if (other.emailId != null)
                return false;
        } else if (!emailId.equals(other.emailId))
            return false;
        return true;
    }
}
