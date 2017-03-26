package com.lakeheadu.pcare.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.lakeheadu.pcare.models.Doctor;
import com.lakeheadu.pcare.models.DoctorDashboard;
import com.lakeheadu.pcare.models.Patient;
import com.lakeheadu.pcare.models.PatientDashboard;
import com.lakeheadu.pcare.models.User;
import com.lakeheadu.pcare.services.DoctorService;
import com.lakeheadu.pcare.services.PatientService;
import com.lakeheadu.pcare.services.UserService;
import com.lakeheadu.pcare.utilities.CommonUtil;

@Controller
public class MainController
{

	@Autowired
	UserService userService;

	@Autowired
	DoctorService doctorService;

	@Autowired
	PatientService patientService;
	
	@Autowired
	PatientDashboard patientDashboard;
	
	@Autowired
	DoctorDashboard doctorDashboard;
	
	@RequestMapping("/")
	public String showHomePage() {
		return "index";
	}

	@RequestMapping("/login")
	public String loginPage() {
		return "login";
	}
	
	@RequestMapping("/register")
	public String registerPage() {
		return "registerPage";
	}
	
	@RequestMapping(value = "/authenticateUser", method = RequestMethod.POST)
	public ModelAndView authenticateUser(User user)
	{
		User validUser = userService.authenticateUser(user);
		ModelAndView model = null;
		
		if (validUser.getUserType().equals(CommonUtil.PATIENT)) 
		{
			model = new ModelAndView("PatientDashboard");
			Patient loggedInPatient = patientService.getPatientByEmail(validUser.getEmailId());

			patientDashboard.setDoctors(loggedInPatient.getDoctorsList());
			patientDashboard.setUser(validUser);

			model.addObject("listOfData", patientDashboard);

			return model;
		}
		else if(validUser.getUserType().equals(CommonUtil.DOCTOR)) 
		{
			model = new ModelAndView("DoctorDashboard");
			
			Doctor loggedInDoctor = doctorService.getDoctorByEmail(validUser.getEmailId());

			doctorDashboard.setPatients(loggedInDoctor.getPatientsList());
			doctorDashboard.setUser(validUser);

			model.addObject("listOfData", doctorDashboard);

			return model;
		}
		
		return model;
	}
}
