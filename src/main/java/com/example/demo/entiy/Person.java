package com.example.demo.entiy;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
public class Person implements Serializable {
		
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private String id;
	private String userName;
	private String userPassword;
	private Integer isLevel;
	private String crtTime;
	private Integer isLogind;
	private Integer isPower;
	private Integer loginCount;
	private String base;
	public String getCrtTime() {
		return crtTime;
	}
	public void setCrtTime(String crtTime) {
		this.crtTime = crtTime;
	}
	public String getBase() {
		return base;
	}
	public void setBase(String base) {
		this.base = base;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserPassword() {
		return userPassword;
	}
	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
	public Integer getIsLevel() {
		return isLevel;
	}
	public void setIsLevel(Integer isLevel) {
		this.isLevel = isLevel;
	}
	public String getCreatTime() {
		return crtTime;
	}
	public void setCreatTime(String creatTime) {
		this.crtTime = creatTime;
	}
	public Integer getIsLogind() {
		return isLogind;
	}
	public void setIsLogind(Integer isLogind) {
		this.isLogind = isLogind;
	}
	public Integer getIsPower() {
		return isPower;
	}
	public void setIsPower(Integer isPower) {
		this.isPower = isPower;
	}
	public Person(String id, String userName, String userPassword, Integer isLevel, String creatTime, Integer isLogind,
			Integer isPower) {
		super();
		this.id = id;
		this.userName = userName;
		this.userPassword = userPassword;
		this.isLevel = isLevel;
		this.crtTime = creatTime;
		this.isLogind = isLogind;
		this.isPower = isPower;
	}
	public Person() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Person [id=" + id + ", userName=" + userName + ", userPassword=" + userPassword + ", isLevel=" + isLevel
				+ ", crtTime=" + crtTime + ", isLogind=" + isLogind + ", isPower=" + isPower + ", loginCount="
				+ loginCount + ", base=" + base + "]";
	}
	public Integer getLoginCount() {
		return loginCount;
	}
	public void setLoginCount(Integer loginCount) {
		this.loginCount = loginCount;
	}
	
	
		
}

