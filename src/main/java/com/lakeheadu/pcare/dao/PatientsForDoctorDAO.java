package com.lakeheadu.pcare.dao;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.lakeheadu.pcare.models.Patient;
import com.lakeheadu.pcare.models.PatientsforDoctor;

@Repository
public interface PatientsForDoctorDAO extends CrudRepository<PatientsforDoctor, Long> {
	
	public PatientsforDoctor findById(int id);
	
}

