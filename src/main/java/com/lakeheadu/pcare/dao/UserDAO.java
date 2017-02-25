package com.lakeheadu.pcare.dao;

import org.springframework.data.repository.CrudRepository;

import com.lakeheadu.pcare.models.User;

public interface UserDAO extends CrudRepository<User, String>{

			
}
