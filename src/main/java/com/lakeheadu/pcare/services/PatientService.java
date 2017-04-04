package com.lakeheadu.pcare.services;

import java.util.Collection;
import java.util.List;

import com.lakeheadu.pcare.models.Appointment;
import com.lakeheadu.pcare.models.Diagnosis;
import com.lakeheadu.pcare.models.Medical;
import com.lakeheadu.pcare.models.Patient;

public interface PatientService 
{
	public boolean saveMedical(Medical medical);
	
	public boolean saveDiagnosis(Diagnosis diagnosis);
	
	public boolean savePatient(Patient patient);
	
	public boolean updatePatient(Patient patient);
	
	public List<Patient> getAllPatients();
	
	public Patient getPatientByEmail(String emailId);
	
	public Patient getPatientById(int id);
	
	public boolean savePatients(List<Patient> patient);
	
	public Boolean addAppointment(Appointment appointment);
	 
 	public Collection<Appointment> getAppointmentList(String patientEmailId);
 
 	public boolean removeAppointment(Appointment appointment);
}
