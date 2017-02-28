package com.lakeheadu.pcare.services;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lakeheadu.pcare.dao.PatientsForDoctorDAO;
import com.lakeheadu.pcare.models.PatientsforDoctor;

@Service
public class PatientsForDoctorServiceImpl implements PatientsForDoctorService  {
	
	@Autowired
	PatientsForDoctorDAO patientsForDoctorDAO;
	
	@Transactional
	public boolean savePatientofDoctors(List<PatientsforDoctor> patients){
		
		if(patientsForDoctorDAO.save(patients) == null)
			return false;
		else 
			return true;
		
	}
	
	@Transactional
	public List<PatientsforDoctor> getAllPatients() {
		
		List<PatientsforDoctor> patients = new ArrayList<PatientsforDoctor>();
		patientsForDoctorDAO.findAll().forEach(patients::add);
		
		return patients;
	}

}

