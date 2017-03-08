package com.lakeheadu.pcare.utilities;

public interface EncryptionService 
{
	public String encrypt(String value);
	
	public String decrypt(String encrypted);
}
