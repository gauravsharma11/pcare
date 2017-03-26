package com.lakeheadu.pcare.dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.lakeheadu.pcare.models.Drug;
import com.lakeheadu.pcare.models.Prescription;

@Repository	
public class PrescriptionDAOImpl implements PrescriptionDAO
{
	@Autowired
	SessionFactory sessionFactory;

	@Override
	public boolean savePrescription(Prescription prescription) 
	{
		try
		{
			sessionFactory.getCurrentSession().merge(prescription);
			return true;
		}
		catch(HibernateException e)
		{
			System.out.println("Prescription object not saved successfully in database");
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public Prescription getPrescriptionById(String id) {
		try
		{
			Query q = sessionFactory.getCurrentSession().createQuery("from Prescription p where p.prescriptionId = :id");
			q.setString("id", id);
			Prescription prescription = (Prescription) q.uniqueResult();
		    return prescription;
		}
		catch(HibernateException e)
		{
			System.out.println("Unable to fetch prescription object from id");
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public boolean saveDrugs(List<Drug> drugs)
	{
		try
		{
			for(Drug drug : drugs)
				sessionFactory.getCurrentSession().save(drug);
			
			return true;
		}
		catch(HibernateException e)
		{
			System.out.println("Drugs not saved successfully in database");
			e.printStackTrace();
			return false;
		}
	}
}
