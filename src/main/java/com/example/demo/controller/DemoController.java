package com.example.demo.controller;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.http.client.methods.CloseableHttpResponse;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.baidu.aip.util.Base64Util;
import com.example.demo.entiy.HumanClass;
import com.example.demo.faceCheck.FaxeCheck;
import com.example.demo.services.DemoServices;
import com.example.demo.util.FileUtil;
import com.example.demo.util.GetTon;
import com.example.demo.util.GsonUtils;
import com.example.demo.util.HttpUtil;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;


@Controller
public class DemoController {

	@Resource
	private DemoServices demoService;

	@RequestMapping(value = "/save")
	public String save() {
		return "login/personLogin";
	}
	
	@RequestMapping(value = "/text")
	public String text() {
		return "text";
	}
	
	@RequestMapping(value = "/alert")
	public String alert() {
		return "Alert";
	}
	
	@RequestMapping(value = "/yanhua")
	public String yanhua() {
		return "yanhua";
	}
	
	@RequestMapping(value = "/yanhuaTest")
	public String yanhuaTest() {
		return "yanhuaTest";
	}
	
	
	@RequestMapping(value = "/test1")
	public String save1() {
		System.out.println("================登陆开始==================");
		return "index";
	}

	@RequestMapping(value = "/", method = { RequestMethod.POST, RequestMethod.GET })
	public String login() {
		return "helloJsp";
	}

	
	/**
	 * 登陆检验
	 * @param request
	 * @param response
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/facelogin.action")
	public String onListStudent(HttpServletRequest request, HttpServletResponse response, Model model) {
		String base = request.getParameter("base");
		try {
			System.out.println("========校验开始=========");
			boolean result = FaxeCheck.getResult(base);
			if (result) {
				//人脸检测失败
				System.out.println(result);
				return "success";
			} else {
				//人脸检测失败
				System.out.println(result);
			}

		} catch (Exception e) {
			e.printStackTrace();
			return "redirect:/page/404.jsp";
		}

		return null;
	}
	
	
	@RequestMapping(value = "/beautiful")
	public String beautiful() {
		System.out.println("================登陆开始==================");
		return "beautiful";
	}
	
	/**
	 * 人脸检测美丑
	 * @param request
	 * @param response
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/faceCheckBeautiful.action")
	@ResponseBody
	public HumanClass faceCheckBeautiful(HttpServletRequest request, 
			HttpServletResponse response, Model model) {
		String base = request.getParameter("base");
		//FaxeCheck.checkBeautiful(base);
			String result= (String) FaxeCheck.checkBeautiful(base);
		
			JSONObject fromObject = JSONObject.fromObject(result);
    		JSONObject jsonArray = fromObject.getJSONObject("result");
    		boolean flag=false;
    		String faceNum =jsonArray.getString("face_num");
    		List<Map<String, Object>> list=(List<Map<String, Object>>) jsonArray.get("face_list");
    		Map<String, Object> map=list.get(0);
    		//人脸置信度
    		double faceProbability =(double) map.get("face_probability");
    		Map<String,Object> map1 = (Map<String, Object>) map.get("expression");
    		//表情
    		String expression =map1.get("type").toString();
    		//臉型
    		Map<String,Object> map2 = (Map<String, Object>) map.get("face_shape");
	    	String faceShape =map2.get("type").toString();
	    	//性别
	    	Map<String,Object> map3 = (Map<String, Object>) map.get("gender");
	    	String gender =map3.get("type").toString();
	    	//年龄
	    	int age =(int) map.get("age");
	    	//打分
	    	double beauty =(double) map.get("beauty");
	    	//人中
	    	Map<String,Object> map4 = (Map<String, Object>) map.get("race");
	    	String race =map4.get("type").toString();
	    	//双眼睁开状态
	    	Map<String,Object> map5 = (Map<String, Object>) map.get("eye_status");
	    	String leftEye =map5.get("left_eye").toString();
	    	String rigthEye =map5.get("right_eye").toString();
	    	//情绪
	    	Map<String,Object> map6 = (Map<String, Object>) map.get("emotion");
	    	String emotion =map6.get("type").toString();
	    	//人类
	    	Map<String,Object> map7 = (Map<String, Object>) map.get("face_type");
	    	String faceType =map7.get("type").toString();
	    	
	    	HumanClass humanClass=new HumanClass();
	    	humanClass.setAge(age);
	    	humanClass.setBeauty(beauty);
	    	humanClass.setEmotion(emotion);
	    	humanClass.setExpression(expression);
	    	humanClass.setFaceNum(faceNum);
	    	humanClass.setFaceProbability(faceProbability);
	    	humanClass.setFaceShape(faceShape);
	    	humanClass.setFaceType(faceType);
	    	humanClass.setGender(gender);
	    	humanClass.setLeftEye(leftEye);
	    	humanClass.setRace(race);
	    	return humanClass;
	}
	
	@RequestMapping(value = "/detail1")
	public String detail () {
		System.out.println("================登陆开始123==================");
		return "detail";
	}
	
}
