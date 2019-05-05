package com.example.demo.entiy;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Demo implements Serializable {
		
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private String id;
	private String userName;
	private String userPassword;
	private String isLevel;
	private String creatTime;
	private String isLogind;
	private String isPower;
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
	public String getIsLevel() {
		return isLevel;
	}
	public void setIsLevel(String isLevel) {
		this.isLevel = isLevel;
	}
	public String getCreatTime() {
		return creatTime;
	}
	public void setCreatTime(String creatTime) {
		this.creatTime = creatTime;
	}
	public String getIsLogind() {
		return isLogind;
	}
	public void setIsLogind(String isLogind) {
		this.isLogind = isLogind;
	}
	public String getIsPower() {
		return isPower;
	}
	public void setIsPower(String isPower) {
		this.isPower = isPower;
	}
	public Demo(String id, String userName, String userPassword, String isLevel, String creatTime, String isLogind,
			String isPower) {
		super();
		this.id = id;
		this.userName = userName;
		this.userPassword = userPassword;
		this.isLevel = isLevel;
		this.creatTime = creatTime;
		this.isLogind = isLogind;
		this.isPower = isPower;
	}
	public Demo() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Demo [id=" + id + ", userName=" + userName + ", userPassword=" + userPassword + ", isLevel=" + isLevel
				+ ", creatTime=" + creatTime + ", isLogind=" + isLogind + ", isPower=" + isPower + "]";
	}
	
	
		
}

