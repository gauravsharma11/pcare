package com.lakeheadu.pcare.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lakeheadu.pcare.dao.UserDAO;
import com.lakeheadu.pcare.models.User;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	UserDAO userDAO;

	@Override
	public User authenticateUser(User user) {
		// TODO Auto-generated method stub

		User newUser = userDAO.findOne(user.getEmailId());

		if (newUser != null) 
			if (!(user.getEmailId().equalsIgnoreCase(newUser.getEmailId()) && user.getPassword().equals(newUser.getPassword())))
					newUser=null;

		return newUser;
	}

}
