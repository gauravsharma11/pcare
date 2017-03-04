package com.lakeheadu.pcare.dao;

import java.util.Collection;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.lakeheadu.pcare.models.User;

@Repository
public class UserDAOImpl implements UserDAO
{
	@Autowired
	private SessionFactory sessionfactory;

	@Override
	public User getUser(String emailId)
	{
		try
		{
			Query query = sessionfactory.getCurrentSession().createQuery("from User u where u.emailId = :emailId");
			query.setString("emailId", emailId);
			User user = (User)query.uniqueResult();
			return user;
		}
		catch(HibernateException e)
		{
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public boolean saveUser(User user)
	{
		try
		{
			sessionfactory.getCurrentSession().persist(user);
			return true;
		}
		catch(HibernateException e)
		{
			e.printStackTrace();
			return false;
		}
	}
	
	@Override
	public boolean saveUsers(Collection<User> users)
	{
		try
		{
			for(User user : users)
				sessionfactory.getCurrentSession().persist(user);
			
			return true;
		}
		catch(HibernateException e)
		{
			e.printStackTrace();
			return false;
		}
	}

}
