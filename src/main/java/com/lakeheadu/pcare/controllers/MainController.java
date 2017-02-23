package com.lakeheadu.pcare.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lakeheadu.pcare.models.Patient;

@Controller
public class MainController {
	
	@RequestMapping("/")
	public String showHomePage(){
		return "index";
	}
	
	@RequestMapping("/login")
	public String loginPage(){
		return "login";
	}

	 @RequestMapping(value="/Adduser",method=RequestMethod.POST)
	    public @ResponseBody String addUser(@RequestBody Patient patient, BindingResult result ){
	        String returnText;
	        if(!result.hasErrors()){
	        //  userList.add(user);
	            returnText = "User has been added to the list. Total number of users are "+patient.getName();
	        }else{
	            returnText = "Sorry, an error has occur. User has not been added to list.";
	        }
	        return returnText;
	    }

}
