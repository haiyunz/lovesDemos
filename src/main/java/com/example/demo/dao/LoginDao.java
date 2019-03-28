package com.example.demo.dao;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.example.demo.entiy.Person;

@Repository
public interface  LoginDao extends JpaRepository<Person, Integer>{

	Person findByUserNameAndUserPassword(String userName,String userPassword) ;
	
	Person save(Person per);

	Person findByUserName(String userName);

	@Modifying
	@Transactional
	@Query(value="UPDATE Person SET SCORE =: beauty AND CREATE_TIME =:createTime  WHERE USER_NAME =: userName",nativeQuery = true)
	void deleteByUserName(@Param("beauty") String beauty,@Param("userName") String userName,@Param(value = "createTime") String createTime);

}
