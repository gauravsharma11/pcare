package com.lakeheadu.pcare.services;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lakeheadu.pcare.dao.PrescriptionDAO;
import com.lakeheadu.pcare.models.Patient;
import com.lakeheadu.pcare.models.Prescription;

@Service
public class PrescriptionServiceImpl implements PrescriptionService {
	
	@Autowired
	PrescriptionDAO prescriptionDAO;

	@Transactional
	public List<Prescription> getAllPrescriptions() {
		List<Prescription> prescriptions = new ArrayList<Prescription>();
		prescriptionDAO.findAll().forEach(prescriptions::add);
		
		return prescriptions;
	}
	
	@Transactional
	public boolean savePrescription(Prescription prescription) {
		
		if(prescriptionDAO.save(prescription) == null)
			return false;
		else 
			return true;
	}

}
