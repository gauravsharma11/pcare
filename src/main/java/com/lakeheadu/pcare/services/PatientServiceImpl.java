package com.lakeheadu.pcare.services;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lakeheadu.pcare.dao.PatientDAO;
import com.lakeheadu.pcare.models.Patient;

@Service
public class PatientServiceImpl implements PatientService {
	
	@Autowired
	PatientDAO patientDAO;

	@Transactional
	public boolean savePatient(Patient patient) {
		
		if(patientDAO.save(patient) == null)
			return false;
		else 
			return true;
	}
	
	@Transactional
	public List<Patient> getAllPatients() {
		
		List<Patient> patients = new ArrayList<Patient>();
		patientDAO.findAll().forEach(patients::add);
		
		return patients;
	}
	
	@Transactional
	public Patient getPatient(int id) {
		
		Patient patient = patientDAO.findById(id);
		
		return patient;
	}

	@Override
	public boolean savePatients(List<Patient> patient) {
		
		if(patientDAO.save(patient) == null)
			return false;
		else 
			return true;
	}
	
}
