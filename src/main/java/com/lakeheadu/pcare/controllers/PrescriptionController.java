package com.lakeheadu.pcare.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.lakeheadu.pcare.models.Prescription;
import com.lakeheadu.pcare.services.PrescriptionService;

@Controller
public class PrescriptionController 
{
	
	@Autowired
	PrescriptionService prescriptionService;
	
	@RequestMapping(value = "/generatePdfPrescription", method = RequestMethod.POST)
	public @ResponseBody String getPrescription(Prescription prescription)
	{
		Prescription fetchedPrescription = prescriptionService.getPrescriptionById(prescription.getPrescriptionId());
		
		JsonArray jarray = new JsonArray();
		
			JsonObject jobj = new JsonObject();
		 	jobj.addProperty("prescriptionId", fetchedPrescription.getPrescriptionId());
            jobj.addProperty("prescriptionBy", fetchedPrescription.getDoctor().getName());
            jobj.addProperty("prescribedOn",   fetchedPrescription.getVisitDate());
            jobj.addProperty("flag", "1");
            jarray.add(jobj);
		
            return jarray.toString();
	}

}
