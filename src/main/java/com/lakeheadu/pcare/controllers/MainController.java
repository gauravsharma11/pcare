package com.lakeheadu.pcare.controllers;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.lakeheadu.pcare.models.Doctor;
import com.lakeheadu.pcare.models.DoctorDashBoard;
import com.lakeheadu.pcare.models.PatientDashboard;
import com.lakeheadu.pcare.models.PatientsforDoctor;
import com.lakeheadu.pcare.models.Prescription;
import com.lakeheadu.pcare.models.User;
import com.lakeheadu.pcare.services.DoctorService;
import com.lakeheadu.pcare.services.PatientService;
import com.lakeheadu.pcare.services.PatientsForDoctorService;
import com.lakeheadu.pcare.services.PrescriptionService;
import com.lakeheadu.pcare.services.UserService;
import com.lakeheadu.pcare.utilities.CommonUtil;

@Controller
public class MainController {

	@Autowired
	UserService userService;

	@Autowired
	DoctorService doctorService;

	@Autowired
	PatientService patientService;
	
	@Autowired
	PatientsForDoctorService pForD;

	@Autowired
	PatientDashboard patientDashboard;
	
	@Autowired
	DoctorDashBoard doctorDashboard;
	
	@Autowired
	PrescriptionService prescriptionService;

	@RequestMapping("/")
	public String showHomePage() {
		return "index";
	}

	@RequestMapping("/login")
	public String loginPage() {
		return "login";
	}

	@RequestMapping(value = "/authenticateUser", method = RequestMethod.POST)
	public ModelAndView authenticateUser(User user) {
		User validUser = userService.authenticateUser(user);
		ModelAndView model = null;
		if (validUser.getUserType().equals(CommonUtil.PATIENT)) {
			model = new ModelAndView("PatientDashboard");

			List<Doctor> listOfDoctors = new ArrayList<Doctor>();
			listOfDoctors = doctorService.getAllDoctors();

			patientDashboard.setListOfDoctors(listOfDoctors);
			patientDashboard.setUser(validUser);

			model.addObject("listOfData", patientDashboard);

			return model;
			
		} else if (validUser.getUserType().equals(CommonUtil.DOCTOR)) {
			model = new ModelAndView("DoctorDashboard");

			List<PatientsforDoctor> listOfPatients = new ArrayList<PatientsforDoctor>();
			//Doctor doctorInstance = doctorService.getDoctor(validUser.getEmailId());
			
			

			listOfPatients = pForD.getAllPatients();

			doctorDashboard.setListOfPatients(listOfPatients);
			doctorDashboard.setUser(validUser);

			model.addObject("listOfData", doctorDashboard);

			return model;
		}
		
		return model;
	}
	
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
