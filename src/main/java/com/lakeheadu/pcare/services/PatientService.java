package com.lakeheadu.pcare.services;

import java.util.List;

import com.lakeheadu.pcare.models.Patient;

public interface PatientService 
{
	public boolean savePatient(Patient patient);
	
	public List<Patient> getAllPatients();
	
	public Patient getPatientByEmail(String emailId);
	
	public Patient getPatientById(int id);
	
	public boolean savePatients(List<Patient> patient);
}
