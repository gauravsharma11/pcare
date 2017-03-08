package com.lakeheadu.pcare.dao;

import java.util.List;
import org.springframework.stereotype.Repository;
import com.lakeheadu.pcare.models.Patient;

@Repository
public interface PatientDAO
{
	public boolean savePatient(Patient patient);
	
	public List<Patient> getAllPatients();
	
	public Patient getPatientByEmail(String emailId);
	
	public boolean savePatients(List<Patient> patient);

	public Patient getPatientById(int id);

}
