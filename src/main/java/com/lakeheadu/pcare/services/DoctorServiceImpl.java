package com.lakeheadu.pcare.services;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lakeheadu.pcare.dao.DoctorDAO;
import com.lakeheadu.pcare.models.Doctor;

@Service
public class DoctorServiceImpl implements DoctorService {
	
	@Autowired
	DoctorDAO doctorDAO;

	@Transactional
	public boolean saveDoctor(Doctor doctor) {
		
		if(doctorDAO.save(doctor) == null)
			return false;
		else 
			return true;
	}
	
	@Transactional
	public List<Doctor> getAllDoctors() {
		
		List<Doctor> doctors = new ArrayList<Doctor>();
		doctorDAO.findAll().forEach(doctors::add);
		
		return doctors;
	}
	
	@Transactional
	public Doctor getDoctor(int id) {
		
		Doctor doctor = doctorDAO.findById(id);
		return doctor;
	}

	@Transactional
	public boolean saveDoctors(List<Doctor> doctor) {
		
		if(doctorDAO.save(doctor) == null)
			return false;
		else 
			return true;
	}

}
