package com.lakeheadu.pcare.services;

import java.util.List;
import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.lakeheadu.pcare.dao.PatientDAO;
import com.lakeheadu.pcare.models.Patient;

@Service
public class PatientServiceImpl implements PatientService 
{
	@Autowired
	PatientDAO patientDAO;

	@Transactional
	public boolean savePatient(Patient patient) 
	{
		if(patientDAO.savePatient(patient))
			return true;
		else 
			return false;
	}
	
	@Transactional
	public List<Patient> getAllPatients()
	{
		return patientDAO.getAllPatients();
	}
	
	@Transactional
	public Patient getPatient(String emailId) 
	{
		return patientDAO.getPatient(emailId);
	}

	@Transactional
	public boolean savePatients(List<Patient> patients) 
	{
		if(patientDAO.savePatients(patients))
			return true;
		else 
			return false;
	}
}
