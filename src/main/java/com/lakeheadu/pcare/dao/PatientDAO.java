package com.lakeheadu.pcare.dao;

import java.util.Collection;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.lakeheadu.pcare.models.Appointment;
import com.lakeheadu.pcare.models.Diagnosis;
import com.lakeheadu.pcare.models.Medical;
import com.lakeheadu.pcare.models.Patient;

@Repository
public interface PatientDAO
{
	public boolean savePatient(Patient patient);
	
	public boolean updatePatient(Patient patient);
	
	public List<Patient> getAllPatients();
	
	public Patient getPatientByEmail(String emailId);
	
	public boolean savePatients(List<Patient> patient);

	public Patient getPatientById(int id);

	public boolean saveDiagnosis(Diagnosis diagnosis);
	
	public boolean saveMedical(Medical medical);
	
	public boolean saveAppointment(Appointment appointment);
	
	public Collection<Appointment> getallDatesByEmail(String email);
	
	public boolean removeAppointment(Appointment appointment);

}
