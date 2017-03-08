package com.lakeheadu.pcare.services;

import java.util.Collection;

import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import javax.transaction.Transactional;

import org.apache.commons.codec.binary.Base64;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lakeheadu.pcare.dao.UserDAO;
import com.lakeheadu.pcare.models.User;
import com.lakeheadu.pcare.utilities.EncryptionService;

@Service
public class UserServiceImpl implements UserService 
{
	@Autowired
	UserDAO userDAO;
	
	@Autowired
	EncryptionService encryptionService;

	@Transactional
	public User authenticateUser(User userToAuthenticate) 
	{
		User existingUser = userDAO.getUser(userToAuthenticate.getEmailId());
		
		String encryptedPassword = "";
		encryptedPassword = encryptionService.encrypt(userToAuthenticate.getPassword());

		if (existingUser == null) 
			return existingUser;
		else if((userToAuthenticate.getEmailId().equalsIgnoreCase(existingUser.getEmailId()) && encryptedPassword.equals(existingUser.getPassword())))
			return existingUser;
		else
			return null;
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
