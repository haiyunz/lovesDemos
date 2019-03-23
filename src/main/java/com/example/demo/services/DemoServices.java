package com.example.demo.services;


import java.util.List;

import com.example.demo.dao.DemoDao;
import com.example.demo.entiy.Demo;



public interface DemoServices {
	
	List<Demo> findAll();
	
	String getJQById();
	
	boolean findByUserNameAndUserPassword(String userName,String userPassword);
}

