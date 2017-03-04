package com.lakeheadu.pcare.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="USER")
public class User 
{
	@Id
	@Column
	private String emailId;
	
	@Column
	private String password;
	
	@Column
	private String userType;
	
	@Column
	private String name;
	
	public void setName(String name) {
		this.name = name;
	}

	public String getEmailId() {
		return emailId;
	}

	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getUserType() {
		return userType;
	}

	public void setUserType(String userType) {
		this.userType = userType;
	}
	
	public String getName() {
		return name;
	}
	
	public User(){
		
	}

	public User(String emailId, String password, String userType, String name) {
		super();
		this.emailId = emailId;
		this.password = password;
		this.userType = userType;
		this.name = name;
	}

}
