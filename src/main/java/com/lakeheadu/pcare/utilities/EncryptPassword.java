package com.lakeheadu.pcare.utilities;

import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

import org.apache.commons.codec.binary.Base64;
import org.springframework.stereotype.Component;

@Component
public class EncryptPassword implements EncryptionService
{
	
	private final static String INIT_VECTOR = "PCARE@ADMIN@789";
	private final static String KEY = "PCARE@LOGIN";
	
	public String encrypt(String value) 
	{
		try 
		{
			IvParameterSpec iv = new IvParameterSpec(INIT_VECTOR.getBytes("UTF-8"));
			SecretKeySpec skeySpec = new SecretKeySpec(KEY.getBytes("UTF-8"), "AES");
			
			Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5PADDING");
			cipher.init(Cipher.ENCRYPT_MODE, skeySpec, iv);
			
			byte[] encrypted = cipher.doFinal(value.getBytes());
			System.out.println("encrypted string: " + Base64.encodeBase64String(encrypted));
	
            return Base64.encodeBase64String(encrypted);
        } 
        catch (Exception ex) 
        {
            ex.printStackTrace();
        }
	
        return null;
	 }
	 
	 public String decrypt(String encrypted) 
	 {
	    try 
	    {
	        IvParameterSpec iv = new IvParameterSpec(INIT_VECTOR.getBytes("UTF-8"));
			SecretKeySpec skeySpec = new SecretKeySpec(KEY.getBytes("UTF-8"), "AES");
			
			Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5PADDING");
	        cipher.init(Cipher.DECRYPT_MODE, skeySpec, iv);
	
	        byte[] original = cipher.doFinal(Base64.decodeBase64(encrypted));
	
	        return new String(original);
	    } 
	    catch (Exception ex) 
	    {
	        ex.printStackTrace();
	    }
	
	    return null;
	}

}
