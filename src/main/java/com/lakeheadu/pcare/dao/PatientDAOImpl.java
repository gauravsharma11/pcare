package com.lakeheadu.pcare.dao;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.lakeheadu.pcare.models.Appointment;
import com.lakeheadu.pcare.models.Diagnosis;
import com.lakeheadu.pcare.models.Medical;
import com.lakeheadu.pcare.models.Patient;

@Repository
public class PatientDAOImpl implements PatientDAO
{
	@Autowired
	SessionFactory sessionFactory;

	@Override
	public boolean savePatient(Patient patient)
	{
		try
		{
			sessionFactory.getCurrentSession().saveOrUpdate(patient);
			return true;
		}
		catch(HibernateException e)
		{
			System.out.println("Patient object not saved successfully in database");
			e.printStackTrace();
			return false;
		}
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Patient> getAllPatients() {
		
		List<Patient> patientsList = new ArrayList<Patient>();
		
		try
		{
			patientsList = (List<Patient>) sessionFactory.getCurrentSession().createCriteria(Patient.class).list();
		}
		catch(HibernateException e)
		{
			System.out.println("Unable to fetch list of patients from database");
			e.printStackTrace();
		}
		return patientsList;
	}

	@Override
	public Patient getPatientByEmail(String emailId) {
		
		try
		{
			Query q = sessionFactory.getCurrentSession().createQuery("from Patient p where p.emailId = :emailId");
			q.setString("emailId", emailId);
		    Patient patient = (Patient) q.uniqueResult();
		    return patient;
		}
		catch(HibernateException e)
		{
			System.out.println("Unable to fetch patient object from emailId");
			e.printStackTrace();
			return null;
		}
	}
	
	@Override
	public Patient getPatientById(int id) {
		
		try
		{
			Query q = sessionFactory.getCurrentSession().createQuery("from Patient p where p.id = :id");
			q.setInteger("id", id);
		    Patient patient = (Patient) q.uniqueResult();
		    return patient;
		}
		catch(HibernateException e)
		{
			System.out.println("Unable to fetch patient object from id");
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public boolean savePatients(List<Patient> patients) {
		
		try
		{
			for(Patient patient : patients)
			    sessionFactory.getCurrentSession().persist(patient);
			
			return true;
		}
		catch(HibernateException e)
		{
			System.out.println("Unable to save list of patients");
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean saveDiagnosis(Diagnosis diagnosis) {
		try
		{
			sessionFactory.getCurrentSession().save(diagnosis);
			return true;
		}
		catch(HibernateException e)
		{
			System.out.println("Diagnosis object not saved successfully in database");
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean saveMedical(Medical medical) {
		try
		{
			sessionFactory.getCurrentSession().save(medical);
			return true;
		}
		catch(HibernateException e)
		{
			System.out.println("Medical object not saved successfully in database");
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean updatePatient(Patient patient) {
		try
		{
			sessionFactory.getCurrentSession().merge(patient);
			return true;
		}
		catch(HibernateException e)
		{
			System.out.println("Patient object not updated successfully in database");
			e.printStackTrace();
			return false;
		}
	}
	
	@Override
	public boolean saveAppointment(Appointment appointment) {
		// TODO Auto-generated method stub
		
		try
		{
			sessionFactory.getCurrentSession().save(appointment);
			return true;
		}
		catch(HibernateException e)
		{
			System.out.println("Appointment object not saved successfully in database");
			e.printStackTrace();
			return false;
		}
		
	}
	  
	@SuppressWarnings("unchecked")
	@Override
	public Collection<Appointment> getallDatesByEmail(String email) {
		
		
		List<Appointment> listOfValue = new ArrayList<Appointment>();
		try
		{
			Query q = sessionFactory.getCurrentSession().createQuery("from Appointment p where p.patientEmail = :emailId");
			q.setString("emailId", email);
		    
			listOfValue = (List<Appointment>) q.list();
			
		}
		catch(HibernateException e)
		{
			System.out.println("Unable to fetch list of appointment dates from database");
			e.printStackTrace();
		}
		return listOfValue;
	}
	

	@Override
	public boolean removeAppointment(Appointment appointment) 
	{
		String hql = "delete Appointment where eventId = :id";
	    Query q = sessionFactory.getCurrentSession().createQuery(hql).setParameter("id", appointment.getEventId());
	  
	    if(q.executeUpdate()==1)
	    {
	    	return true;
	    }
	    else
	    {
	    	return false;
	    }
		
	
	}
}
