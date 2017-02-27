package com.lakeheadu.pcare.controllers;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.lakeheadu.pcare.models.Doctor;
import com.lakeheadu.pcare.models.PatientDashboard;
import com.lakeheadu.pcare.models.User;
import com.lakeheadu.pcare.services.DoctorService;
import com.lakeheadu.pcare.services.DoctorServiceImpl;
import com.lakeheadu.pcare.services.UserService;
import com.lakeheadu.pcare.utilities.CommonUtil;

@Controller
public class MainController {

	@Autowired
	UserService userService;

	@Autowired
	DoctorService doctorService;

	@Autowired
	PatientDashboard patientDashboard;

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
			// return "temp";
		}
		// else if(validUser.getUserType().equals(CommonUtil.DOCTOR))
		// return "";
		// else if(validUser.getUserType().equals(CommonUtil.STAFF))
		// return "";
		//
		// return "";
		return model;
	}
}
