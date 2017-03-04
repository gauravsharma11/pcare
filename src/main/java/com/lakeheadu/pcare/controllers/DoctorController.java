package com.lakeheadu.pcare.controllers;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.lakeheadu.pcare.models.Prescription;
import com.lakeheadu.pcare.services.PrescriptionService;

@Controller
public class DoctorController 
{
	@Autowired
	PrescriptionService prescriptionService;
	
	@RequestMapping(value = "/prescription", method = RequestMethod.POST)
	public boolean savePrescription(HttpServletRequest request) {
		
		String drugName = request.getParameter("drugName");
		String form = request.getParameter("form");
		String strength = request.getParameter("strength");
		String directions = request.getParameter("directions");
		String prescribedBy = request.getParameter("prescribedBy");
		String prescribedOn = request.getParameter("prescribedOn");
		
		Prescription p = new Prescription();
		
		p.setDirections(directions);
		p.setDrugName(drugName);
		p.setForm(form);
		p.setPrescribedBy(prescribedBy);
		p.setStrength(strength);
		p.setPrescribedOn(prescribedOn);
		
		 if(prescriptionService.savePrescription(p))
			 return true;
		 else
			 return false;
	}
	
	@RequestMapping(value = "/prescriptions", method = RequestMethod.POST)
	public ModelAndView getAllPrescriptions() {
		 
		 ModelAndView model = new ModelAndView("PatientDashboard");
		 model.addObject("listOfPrescriptions", prescriptionService.getAllPrescriptions());
		 
		 return model;
	}
}
