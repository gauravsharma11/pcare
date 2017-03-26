package com.lakeheadu.pcare.controllers;

import java.io.UnsupportedEncodingException;
import java.util.Collection;
import java.util.List;

import javax.mail.internet.InternetAddress;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.common.collect.Lists;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.lakeheadu.pcare.models.Doctor;
import com.lakeheadu.pcare.models.Drug;
import com.lakeheadu.pcare.models.Patient;
import com.lakeheadu.pcare.models.Prescription;
import com.lakeheadu.pcare.models.User;
import com.lakeheadu.pcare.services.DoctorService;
import com.lakeheadu.pcare.services.PatientService;
import com.lakeheadu.pcare.services.PrescriptionService;
import com.twilio.Twilio;
import com.twilio.rest.api.v2010.account.Message;
import com.twilio.type.PhoneNumber;

import it.ozimov.springboot.mail.model.Email;
import it.ozimov.springboot.mail.model.defaultimpl.DefaultEmail;
import it.ozimov.springboot.mail.service.EmailService;


@Controller
public class DoctorController 
{
	@Autowired
	private PrescriptionService prescriptionService;
	
	@Autowired
	private PatientService patientService;
	
	@Autowired
	private DoctorService doctorService;
	
	@Autowired
	public EmailService emailService;
	
	@RequestMapping(value="/addPrescription", method=RequestMethod.POST)
	public @ResponseBody boolean addPrescription(@RequestBody Prescription prescription)
	{
		 boolean isInserted=true;
		    
		 List<Drug> drugs = prescription.getDrugs();
		 
		 if(prescriptionService.saveDrugs(drugs))
		 {
			    Patient prescribedPatient = patientService.getPatientById(Integer.parseInt(prescription.getPatientId()));
				prescription.setPatient(prescribedPatient);
				
				Doctor prescribedByDoctor = doctorService.getDoctorByEmail(prescription.getPrescribedById());
				prescription.setDoctor(prescribedByDoctor);
				 
				if(prescriptionService.savePrescription(prescription))
				{
					final String ACCOUNT_SID = "AC97f5a85bbc99b7e3ef8a7fc1399ae0d5";
					final String AUTH_TOKEN = "43984f1e9cf71aa00296eb4d304902f3";
					
					Twilio.init(ACCOUNT_SID, AUTH_TOKEN);
					
					Message.creator(new PhoneNumber("+1"+"8077082057"), new PhoneNumber("+14388004089"), 
					        "Your prescription has been added by Dr. "+ prescription.getDoctor().getName() +" to your pcare account. Log in to your account for more details").create();
					
					Email email = null;
					 String url = prescription.getUrl();
				     String someVariable = "Click here to View";
				     someVariable = someVariable.replaceAll("(.*://[^<>[:space:]]+[[:alnum:]/])", "<a href=\"$1\">"+url+"</a>");
					try 
					{
						email = DefaultEmail.builder()
						        .from(new InternetAddress("pcare.webhealth@gmail.com", "PCare"))
						        .to(Lists.newArrayList(new InternetAddress("gaurav.sharma97798@gmail.com", prescribedPatient.getName())))
						        .subject("noReply-E-Prescription")
						        .body("Your prescription has been added by Dr. "+ prescription.getDoctor().getName()+ "\nClick this link to view: " +url)
						        .build();
						
						emailService.send(email);
					} 
					catch (UnsupportedEncodingException e) 
					{
						e.printStackTrace();
					}
					   
					   isInserted = true;
				}
				else
					isInserted = false;
		 }
		 else
			 return false;
		
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
