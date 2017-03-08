package com.lakeheadu.pcare.controllers;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.lakeheadu.pcare.models.Doctor;
import com.lakeheadu.pcare.models.Patient;
import com.lakeheadu.pcare.models.Prescription;
import com.lakeheadu.pcare.models.User;
import com.lakeheadu.pcare.services.DoctorService;
import com.lakeheadu.pcare.services.PatientService;
import com.lakeheadu.pcare.services.PrescriptionService;
import com.twilio.Twilio;
import com.twilio.rest.api.v2010.account.Message;
import com.twilio.type.PhoneNumber;

@Controller
public class DoctorController 
{
	@Autowired
	PrescriptionService prescriptionService;
	
	@Autowired
	PatientService patientService;
	
	@Autowired
	DoctorService doctorService;
	
	@RequestMapping(value="/addPrescription",method=RequestMethod.POST)
	 public @ResponseBody boolean addPrescription(Prescription prescriptionInstance)
	{
		 boolean isInserted=true;
	//	 int count=0;
        
        /*loop for creating list of drugs*/
//        ArrayList<String[]> list = new ArrayList<String[]>();
//        for(int i=0;i<prescriptionInstance.getListOfDrugs().size()/3;i++){
//        	String[] dump = null;
//        	for(int j=0;j<3;j++){
//        		dump[j]=prescriptionInstance.getListOfDrugs().get(count++).toString();
//        	}
//        	list.add(dump);
//        }
		 
		Patient prescribedPatient = patientService.getPatientById(Integer.parseInt(prescriptionInstance.getPatientId()));
		prescriptionInstance.setPatient(prescribedPatient);
		
		Doctor prescribedByDoctor = doctorService.getDoctorByEmail(prescriptionInstance.getPrescribedById());
		prescriptionInstance.setDoctor(prescribedByDoctor);
		 
		final String ACCOUNT_SID = "AC97f5a85bbc99b7e3ef8a7fc1399ae0d5";
		final String AUTH_TOKEN = "43984f1e9cf71aa00296eb4d304902f3";
		
		Twilio.init(ACCOUNT_SID, AUTH_TOKEN);
		
		Message.creator(new PhoneNumber("+1"+"8073563615"), new PhoneNumber("+14388004089"), 
		        "Your prescription has been added by Dr. "+ prescriptionInstance.getDoctor().getName() +" to your pcare account. Log in to your account for more details").create();
		
		 if(prescriptionService.savePrescription(prescriptionInstance))
			 isInserted = true;
		 else
			 isInserted = false;
		 
		return isInserted;
    }
	
	@RequestMapping(value = "/getlistOfPrescription", method = RequestMethod.POST)
	public @ResponseBody String getlistOfPrescription(User user)
	{
		String patientEmailId = user.getEmailId(); //Get the patient email over here 
		
		Patient prescribedPatient = patientService.getPatientByEmail(patientEmailId);
		Collection<Prescription> prescriptionList = prescribedPatient.getPrescriptionList();
		
		JsonArray jarray = new JsonArray();
		
		for(Prescription prescription : prescriptionList)
		{
			JsonObject jobj = new JsonObject();
		 	jobj.addProperty("prescriptionId", prescription.getPrescriptionId());
            jobj.addProperty("prescriptionBy", prescription.getDoctor().getName());
            jobj.addProperty("prescribedOn", prescription.getVisitDate());
            jobj.addProperty("flag", "1");
            jarray.add(jobj);
		}
        return jarray.toString();
	}
}
