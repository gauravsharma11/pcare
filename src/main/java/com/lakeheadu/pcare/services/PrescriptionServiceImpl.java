package com.lakeheadu.pcare.services;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lakeheadu.pcare.dao.PrescriptionDAO;
import com.lakeheadu.pcare.models.Drug;
import com.lakeheadu.pcare.models.Prescription;

@Service
public class PrescriptionServiceImpl implements PrescriptionService {
	
	@Autowired
	PrescriptionDAO prescriptionDAO;

	@Transactional
	public boolean savePrescription(Prescription prescription) {
		
		return prescriptionDAO.savePrescription(prescription);
	}

	@Transactional
	public Prescription getPrescriptionById(String Id) {
		
		return prescriptionDAO.getPrescriptionById(Id);
	}

	@Transactional
	public boolean saveDrugs(List<Drug> drugs) {
		return prescriptionDAO.saveDrugs(drugs);
	}

}
