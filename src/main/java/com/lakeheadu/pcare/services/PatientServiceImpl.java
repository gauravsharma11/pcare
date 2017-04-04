package com.lakeheadu.pcare.services;

import java.util.Collection;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lakeheadu.pcare.dao.PatientDAO;
import com.lakeheadu.pcare.models.Appointment;
import com.lakeheadu.pcare.models.Diagnosis;
import com.lakeheadu.pcare.models.Medical;
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
	public Patient getPatientByEmail(String emailId) 
	{
		return patientDAO.getPatientByEmail(emailId);
	}
	
	@Transactional
	public Patient getPatientById(int id) 
	{
		return patientDAO.getPatientById(id);
	}

	@Transactional
	public boolean savePatients(List<Patient> patients) 
	{
		if(patientDAO.savePatients(patients))
			return true;
		else 
			return false;
	}

	@Transactional
	public boolean saveDiagnosis(Diagnosis diagnosis) {
		
		if(patientDAO.saveDiagnosis(diagnosis))
			return true;
		else 
			return false;
	}

	@Transactional
	public boolean saveMedical(Medical medical) {
		if(patientDAO.saveMedical(medical))
			return true;
		else 
			return false;
	}

	@Transactional
	public boolean updatePatient(Patient patient) {
		if(patientDAO.updatePatient(patient))
			return true;
		else 
			return false;
	}
	
	@Transactional
	public Boolean addAppointment(Appointment appointment) {
		if(patientDAO.saveAppointment(appointment))
			return true;
		else 
			return false;
		
	}
	 
	@Transactional
	public Collection<Appointment> getAppointmentList(String email) {
		return patientDAO.getallDatesByEmail(email);
	}
	 
 	@Transactional
 	public boolean removeAppointment(Appointment appointment) {
 		return patientDAO.removeAppointment(appointment);
 	}
	 
}
