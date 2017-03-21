package com.lakeheadu.pcare.dao;

import org.springframework.stereotype.Repository;

import com.lakeheadu.pcare.models.Prescription;

@Repository
public interface PrescriptionDAO 
{
	
	public boolean savePrescription(Prescription prescription);
	
	public Prescription getPrescriptionById(String Id);

}
