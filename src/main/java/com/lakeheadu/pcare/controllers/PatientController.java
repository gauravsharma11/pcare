package com.lakeheadu.pcare.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.lakeheadu.pcare.models.Patient;
import com.lakeheadu.pcare.services.PatientService;

@Controller
public class PatientController {

	@Autowired
	PatientService patientService;
	
	@RequestMapping("/patients")
	public List<Patient> getAllPatients() {
		return patientService.getAllPatients() ;
	}

	@RequestMapping("/patients/{id}")
	public Patient getPatient(@PathVariable int id) {
		
		return patientService.getPatient(id);
	}

	@RequestMapping(method = RequestMethod.POST, value="/patients")
	public boolean addPatient(@RequestBody Patient patient, BindingResult result) {
		
		boolean isSuccess;

		if (result.hasErrors())
			isSuccess = false;
		else
			isSuccess = patientService.savePatient(patient);

		return isSuccess;
	}
	
}
