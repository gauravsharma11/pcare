package com.lakeheadu.pcare.services;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lakeheadu.pcare.dao.DoctorDAO;
import com.lakeheadu.pcare.models.Doctor;

@Service
public class DoctorServiceImpl implements DoctorService
{
	
	@Autowired
	DoctorDAO doctorDAO;

	@Transactional
	public boolean saveDoctor(Doctor doctor) 
	{
		if(doctorDAO.saveDoctor(doctor))
			return true;
		else 
			return false;
	}
	
	@Transactional
	public List<Doctor> getAllDoctors() 
	{
		return doctorDAO.getAllDoctors();
	}
	
	@Transactional
	public Doctor getDoctorByEmail(String emailId)
	{
		return doctorDAO.getDoctorByEmail(emailId);
	}
	
	@Transactional
	public boolean saveDoctors(List<Doctor> doctors) {
		
		if(doctorDAO.saveDoctors(doctors))
			return true;
		else 
			return false;
	}

	@Transactional
	public Doctor getDoctorById(int id) {
		return doctorDAO.getDoctorById(id);
	}
}
