package com.lakeheadu.pcare.dao;

import java.util.List;
import com.lakeheadu.pcare.models.Doctor;

public interface DoctorDAO  {
	
	public Doctor getDoctor(String email);
	
	public List<Doctor> getAllDoctors();
	
	public boolean saveDoctor(Doctor doctor);
	
	public boolean saveDoctors(List<Doctor> patient);

}
