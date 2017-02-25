package com.lakeheadu.pcare.dao;

import org.springframework.data.repository.CrudRepository;
import com.lakeheadu.pcare.models.Doctor;
import com.lakeheadu.pcare.models.Patient;


public interface DoctorDAO extends CrudRepository<Doctor, Long> {
	
	public Doctor findById(int id);

}
