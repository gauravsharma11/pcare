package com.lakeheadu.pcare.services;

import java.util.Collection;

import com.lakeheadu.pcare.models.User;

public interface UserService 
{
	public boolean saveUser(User user);
	
	public  User authenticateUser(User user);
	
	public boolean saveUsers(Collection<User> users);
}
