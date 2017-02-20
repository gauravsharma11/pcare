package com.lakeheadu.pcare.dao;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.lakeheadu.pcare.models.Patient;

@Repository
public interface PatientDAO extends CrudRepository<Patient, Long> {
	
	public Patient findById(int id);
	
}
