package com.lakeheadu.pcare.dao;

import java.util.List;

import com.lakeheadu.pcare.models.Drug;
import com.lakeheadu.pcare.models.Prescription;

public interface PrescriptionDAO 
{
	
	public boolean savePrescription(Prescription prescription);
	
	public Prescription getPrescriptionById(String Id);

	public boolean saveDrugs(List<Drug> drugs);

}
