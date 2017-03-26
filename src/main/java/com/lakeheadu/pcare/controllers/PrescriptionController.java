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
public class PrescriptionController 
{
	@Autowired
	PrescriptionService prescriptionService;
	
	@RequestMapping(value = "/viewPrescription", method = RequestMethod.GET)
	public ModelAndView getPrescription(HttpServletRequest request)
	{
		Prescription fetchedPrescription = prescriptionService.getPrescriptionById(request.getParameter("id"));
		
		ModelAndView modelAndView = new ModelAndView("prescriptionDashboard");
		modelAndView.addObject("prescription", fetchedPrescription);
        
        return modelAndView;
	}

}
