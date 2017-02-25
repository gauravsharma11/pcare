package com.lakeheadu.pcare.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.lakeheadu.pcare.models.User;
import com.lakeheadu.pcare.services.UserService;
import com.lakeheadu.pcare.utilities.CommonUtil;

@Controller
public class MainController 
{
	
	@Autowired
	UserService userService;
	
	@RequestMapping("/")
	public String showHomePage()
	{
		return "index";
	}

	@RequestMapping("/login")
	public String loginPage() 
	{
		return "login";
	}
	
	@RequestMapping(value= "/authenticateUser", method = RequestMethod.POST)
	public String authenticateUser(User user) 
	{
		User validUser = userService.authenticateUser(user);
		
		if(validUser.getUserType().equals(CommonUtil.PATIENT))
			return "PatientDashboard";
		else if(validUser.getUserType().equals(CommonUtil.DOCTOR))
			return "";
		else if(validUser.getUserType().equals(CommonUtil.STAFF))
			return "";
		
		return "";
	}
}
