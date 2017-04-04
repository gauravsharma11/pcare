package com.lakeheadu.pcare.controllers;

import java.util.Collection;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.joda.time.DateTime;
import org.joda.time.format.DateTimeFormat;
import org.joda.time.format.DateTimeFormatter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.lakeheadu.pcare.models.Appointment;
import com.lakeheadu.pcare.models.Doctor;
import com.lakeheadu.pcare.models.Medical;
import com.lakeheadu.pcare.models.Patient;
import com.lakeheadu.pcare.models.User;
import com.lakeheadu.pcare.services.DoctorService;
import com.lakeheadu.pcare.services.PatientService;

@Controller
public class PatientController {

	@Autowired
	PatientService patientService;
	
	@Autowired
	DoctorService doctorService;
	
	@RequestMapping("/patients")
	public List<Patient> getAllPatients() {
		return patientService.getAllPatients();
	}

	@RequestMapping("/patients/{id}")
	public Patient getPatient(@PathVariable String emailId) 
	{
		return patientService.getPatientByEmail(emailId);
	}

	@RequestMapping(method = RequestMethod.POST, value="/patients")
	public boolean addPatient(@RequestBody Patient patient, BindingResult result)
	{
		boolean isSuccess;

		if (result.hasErrors())
			isSuccess = false;
		else
			isSuccess = patientService.savePatient(patient);

		return isSuccess;
	}
	
	@RequestMapping(value="/addAppointment", method=RequestMethod.POST)
	public @ResponseBody boolean addAppointment(@RequestBody Appointment appointment)
	{
		return patientService.addAppointment(appointment);
	}
	
	@RequestMapping(value="/removeAppointment", method=RequestMethod.POST)
	public @ResponseBody boolean removeAppointment(@RequestBody Appointment appointment)
	{
		return patientService.removeAppointment(appointment);
	}
	
		@RequestMapping(value = "/getlistOfAppointment", method = RequestMethod.POST)
	 	public @ResponseBody String getlistOfPrescription(User user)
	 	{
	 		String patientEmailId = user.getEmailId(); //Get the patient email over here 
	 		
	 		Collection<Appointment> appointmentList = patientService.getAppointmentList(patientEmailId);
	 		
	 		JsonArray jarray = new JsonArray();
	 		
	 		for(Appointment val : appointmentList)
	 		{
	 			JsonObject jobj = new JsonObject();
	 		 	jobj.addProperty("eventId", val.getEventId());
	             jobj.addProperty("eventDate", val.getAppointmentDate());
	             jobj.addProperty("flag", "1");
	             jarray.add(jobj);
	 		}
	         return jarray.toString();
	 	}
	
	@RequestMapping(method = RequestMethod.POST, value="/requestMedical")
	public String requestMedical(HttpServletRequest request)
	{
		request.getParameter("visitDate");
		Doctor associatedDoctor = doctorService.getDoctorByEmail(request.getParameter("docEmail"));
		Patient associatedPatient = patientService.getPatientByEmail(request.getParameter("emailId"));
		
		DateTimeFormatter formatter = DateTimeFormat.forPattern("dd/MM/yyyy");
		DateTime ed = formatter.parseDateTime(request.getParameter("endDate"));
		DateTime sd = formatter.parseDateTime(request.getParameter("startDate"));
		
		Medical medical = new Medical(true, ed.toDate(), sd.toDate(), request.getParameter("reason"), "", associatedPatient, associatedDoctor);
		medical.setDoctor(associatedDoctor);
		associatedPatient.setMedical(medical);
		
		return patientService.updatePatient(associatedPatient)+"";
	}
	
	@RequestMapping(value = "/viewMedical", method = RequestMethod.POST)
	public ModelAndView viewMedical(HttpServletRequest request)
	{
		Patient patient = patientService.getPatientByEmail(request.getParameter("emailId"));
		Doctor doctor = doctorService.getDoctorByEmail(request.getParameter("docEmail"));
		
		ModelAndView modelAndView = new ModelAndView("MedicalDashboard");
		modelAndView.addObject("patient", patient);
		modelAndView.addObject("doctor", doctor);

        return modelAndView;
	}
	
}
