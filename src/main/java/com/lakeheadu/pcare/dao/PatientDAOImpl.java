package com.lakeheadu.pcare.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

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
			sessionFactory.getCurrentSession().save(patient);
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
	public Patient getPatient(String emailId) {
		
		try
		{
			Query q = sessionFactory.getCurrentSession().createQuery("from Patient p where p.emailId = :emailId");
			q.setString("emailId", emailId);
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
}
