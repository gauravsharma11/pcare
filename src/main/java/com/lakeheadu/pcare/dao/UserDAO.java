package com.lakeheadu.pcare.dao;

import java.util.Collection;

import com.lakeheadu.pcare.models.User;

public interface UserDAO 
{
	public User getUser(String emailId);
	
	public boolean saveUser(User user);
	
	public boolean saveUsers(Collection<User> users);
}
