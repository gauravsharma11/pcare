package com.lakeheadu.pcare.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lakeheadu.pcare.models.Patient;

@Controller
public class MainController 
{
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
}
