package com.lakeheadu.pcare.services;

import java.util.List;

import com.lakeheadu.pcare.models.Prescription;

public interface PrescriptionService {
	
	public List<Prescription> getAllPrescriptions();
	
	public boolean savePrescription(Prescription prescription);

}
