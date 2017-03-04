package com.lakeheadu.pcare.services;

import java.util.Collection;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lakeheadu.pcare.dao.UserDAO;
import com.lakeheadu.pcare.models.User;

@Service
public class UserServiceImpl implements UserService 
{
	@Autowired
	UserDAO userDAO;

	@Transactional
	public User authenticateUser(User user) 
	{
		User newUser = userDAO.getUser(user.getEmailId());

		if (newUser == null) 
			return newUser;
		else if((user.getEmailId().equalsIgnoreCase(newUser.getEmailId()) && user.getPassword().equals(newUser.getPassword())))
			return newUser;
		
		return newUser;
	}

	@Transactional
	public boolean saveUser(User user) {
		if(userDAO.saveUser(user))
			return true;
		else 
			return false;
	}

	@Transactional
	public boolean saveUsers(Collection<User> users) {
		if(userDAO.saveUsers(users))
			return true;
		else 
			return false;
	}
}
