package com.example.demo.services.impl;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.example.demo.dao.DemoDao;
import com.example.demo.entiy.Demo;
import com.example.demo.services.DemoServices;
 
 
@Service("demoServices")
public class DemoServicesImpl implements DemoServices{
	
	
	@Resource
	private DemoDao demoDao;

	@Override
	public List<Demo> findAll() {
		// TODO Auto-generated method stub
		System.out.println(demoDao.findAll());
		return demoDao.findAll();
	}

	@Override
	public String getJQById() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean findByUserNameAndUserPassword(String userName, String userPassword) {
		// TODO Auto-generated method stub
		return demoDao.findByUserNameAndUserPassword(userName, userPassword);
	}

	


	


 
}

