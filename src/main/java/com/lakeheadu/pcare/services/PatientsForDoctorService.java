package com.lakeheadu.pcare.services;

import java.util.List;

import com.lakeheadu.pcare.models.PatientsforDoctor;


public interface PatientsForDoctorService {
	
	public boolean savePatientofDoctors(List<PatientsforDoctor> patients);

	public List<PatientsforDoctor> getAllPatients();
}
