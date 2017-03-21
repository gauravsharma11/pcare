package com.lakeheadu.pcare.services;

import com.lakeheadu.pcare.models.Prescription;

public interface PrescriptionService {
	
	public boolean savePrescription(Prescription prescription);
	
	public Prescription getPrescriptionById(String Id);

}
