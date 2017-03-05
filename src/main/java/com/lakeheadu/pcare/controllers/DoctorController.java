package com.lakeheadu.pcare.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.lakeheadu.pcare.models.Prescription;
import com.lakeheadu.pcare.services.PrescriptionService;

@Controller
public class DoctorController 
{
	@Autowired
	PrescriptionService prescriptionService;
	
	@RequestMapping(value="/addPrescription",method=RequestMethod.POST)
	 public @ResponseBody boolean addPrescription(Prescription prescriptionInstance){
      
		 boolean isInserted=true;
	//	 int count=0;
        
        /*loop for creating list of drugs*/
//        ArrayList<String[]> list = new ArrayList<String[]>();
//        for(int i=0;i<prescriptionInstance.getListOfDrugs().size()/3;i++){
//        	String[] dump = null;
//        	for(int j=0;j<3;j++){
//        		dump[j]=prescriptionInstance.getListOfDrugs().get(count++).toString();
//        	}
//        	list.add(dump);
//        	
//        }
        return isInserted;
    }
	
	
	@RequestMapping(value = "/prescriptions", method = RequestMethod.POST)
	public ModelAndView getAllPrescriptions() {
		 
		 ModelAndView model = new ModelAndView("PatientDashboard");
		 model.addObject("listOfPrescriptions", prescriptionService.getAllPrescriptions());
		 
		 return model;
	}
}
