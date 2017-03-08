package com.lakeheadu.pcare.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.lakeheadu.pcare.models.Doctor;

@Repository
public class DoctorDAOImpl implements DoctorDAO{
	
	@Autowired
	SessionFactory sessionFactory;

	@Override
	public boolean saveDoctor(Doctor doctor)
	{
		try
		{
			sessionFactory.getCurrentSession().save(doctor);
			return true;
		}
		catch(HibernateException e)
		{
			System.out.println("Doctor object not saved successfully in database");
			e.printStackTrace();
			return false;
		}
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Doctor> getAllDoctors() {
		
		List<Doctor> doctorsList = new ArrayList<Doctor>();
		
		try
		{
			doctorsList = (List<Doctor>) sessionFactory.getCurrentSession().createCriteria(Doctor.class).list();
		}
		catch(HibernateException e)
		{
			System.out.println("Unable to fetch list of doctors from database");
			e.printStackTrace();
		}
		
		return doctorsList;
	}

	@Override
	public Doctor getDoctorByEmail(String emailId) {
		
		try
		{
			Query query = sessionFactory.getCurrentSession().createQuery("from Doctor d where d.emailId = :emailId");
			query.setString("emailId", emailId);
		    Doctor doctor = (Doctor) query.uniqueResult();
		    return doctor;
		}
		catch(HibernateException e)
		{
			System.out.println("Unable to fetch doctor object from emailId");
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public boolean saveDoctors(List<Doctor> doctors) {
		
		try
		{
			for(Doctor doctor : doctors)
			    sessionFactory.getCurrentSession().persist(doctor);
			
			return true;
		}
		catch(HibernateException e)
		{
			System.out.println("Unable to save list of doctors");
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public Doctor getDoctorById(int id) {
		
		try
		{
			Query query = sessionFactory.getCurrentSession().createQuery("from Doctor d where d.id = :id");
			query.setInteger("id", id);
		    Doctor doctor = (Doctor) query.uniqueResult();
		    return doctor;
		}
		catch(HibernateException e)
		{
			System.out.println("Unable to fetch doctor object from id");
			e.printStackTrace();
			return null;
		}
	}

}
