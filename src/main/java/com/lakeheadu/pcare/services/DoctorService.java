package com.lakeheadu.pcare.services;

import java.util.List;
import com.lakeheadu.pcare.models.Doctor;

public interface DoctorService
{
	public Doctor getDoctorByEmail(String email);
	
	public Doctor getDoctorById(int id);
	
	public List<Doctor> getAllDoctors();
	
	public boolean saveDoctor(Doctor doctor);
	
	public boolean saveDoctors(List<Doctor> patient);
}
