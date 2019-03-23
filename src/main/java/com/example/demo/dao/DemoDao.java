package com.example.demo.dao;



import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.example.demo.entiy.Demo;


@Repository
public interface DemoDao extends JpaRepository<Demo, Integer> {

	@Override
	List<Demo> findAll();

	
	boolean findByUserNameAndUserPassword(String userName,String userPassword);
	
}
