package com.example.demo.services.impl;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import com.example.demo.dao.LoginDao;
import com.example.demo.entiy.Person;
import com.example.demo.services.LoginServices;

@Service("loginServices")
public class LoginServicesImpl implements LoginServices {
	@Autowired
	private LoginDao loginDao;
	
	public boolean addUserPassWord(String name , String passWord) {
		if(StringUtils.isEmpty(name)||StringUtils.isEmpty(passWord)) {
			return false ;
		}
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
		System.out.println();// new Date()为获取当前系统时间
		Person person=new Person();
		//登录名
		person.setUserName(name);
		//登陆密码
		person.setUserPassword(passWord);
		person.setIsLevel(0);//人物初始级别
		person.setIsLogind(0);//"0"代表未登录
		person.setLoginCount(0);//登陆次数
		person.setIsPower(0);//设置人物级别
		person.setCreatTime(df.format(new Date()).toString());
		if( loginDao.save(person) != null) {
			return true ;
		}
		return false;
		
	}

	@Override
	public String findUserNameAndPassWord(String userName, String passWord) {
		Person person =loginDao.findByUserNameAndUserPassword(userName, passWord);
		if(null==person) {
			//查询失败,登录名或者密码错误;
			return "0";
		}else {
			//如果当前登陆人在本机,从session取数据,直接登陆,如果注销掉,session 销毁
			return "1";
		}
		
	}

	@Override
	public boolean findByUserName(String userName) {
		if("".equals(userName)) {
			return false;
		}
		
		Person userBoolean = loginDao.findByUserName(userName);
		if(null!=userBoolean) {
			return true ;
		}
		return false;
	}

	@Override
	public boolean addUserNameAndBase(String userName, String base) {
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
		Person person=new Person();
		//登录名
		person.setUserName(userName);
		//登陆密码
		person.setUserPassword("00000");
		person.setIsLevel(0);//人物初始级别
		person.setIsLogind(0);//"0"代表未登录
		person.setLoginCount(0);//登陆次数
		person.setIsPower(0);//设置人物级别
		person.setCreatTime(df.format(new Date()).toString());
		person.setBase(base);
		person = loginDao.save(person);
		if (StringUtils.isEmpty(person)) {
			return false;
		}
		return true;
	}
	
}
