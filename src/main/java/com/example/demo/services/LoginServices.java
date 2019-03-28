package com.example.demo.services;

import com.example.demo.entiy.Person;

public interface LoginServices {
	
	
	boolean addUserPassWord (String userName , String passWord);

	String findUserNameAndPassWord(String userName, String passWord);

	Person findByUserName(String userName);

	boolean addUserNameAndBase(String userName, String base);

	boolean updateScore(String beauty,String userName);
	
}


