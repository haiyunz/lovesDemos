package com.example.demo.dao;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.entiy.Person;

@Repository
public interface  LoginDao extends JpaRepository<Person, Integer>{

	Person findByUserNameAndUserPassword(String userName,String userPassword) ;
	
	Person save(Person per);

	Person findByUserName(String userName);

}
