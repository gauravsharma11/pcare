package com.lakeheadu.pcare.services;

import java.util.ArrayList;
import java.util.List;

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
		
		patientDAO.save(patient);
		return false;
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
	
}
