package com.example.demo.controller.loginController;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.entiy.Person;
import com.example.demo.faceCheck.FaxeCheck;
import com.example.demo.services.LoginServices;
import com.example.demo.util.BaseToImage;
import com.jacob.activeX.ActiveXComponent;
import com.jacob.com.Dispatch;
import com.jacob.com.Variant;
import net.sf.json.JSONObject;


@Controller
@RequestMapping("/login")
public class LoginController {
	@Autowired
	private LoginServices loginServices;
	
	@RequestMapping(value = "/loginRegister.action")
	public String loginRegister(HttpServletRequest request) {
		return "login/faceLoginRegister";
	}
	
	@RequestMapping(value = "/idRegister.action")
	public String idRegister(HttpServletRequest request) {
		return "login/faceLoginRegister";
	}
	
	@RequestMapping(value = "/home.action")
	public String home(HttpServletRequest request) {
		return "widding/home";
	}
	
	@RequestMapping(value = "/faceLogin.action")
	public String faceLogin(HttpServletRequest request) {
		return "login/faceLogin";
		//return "vedioPlay/vedioPlay";
	}
	
	@RequestMapping(value = "/faceLoginDetail.action")
	public String faceLoginDetail(HttpServletRequest request) {
		return "admin/loginSuccess";
		//return "vedioPlay/vedioPlay";
	}
	
	@RequestMapping(value = "/a.action")
	public String ssss(HttpServletRequest request) {
		return "login/loading";
		//return "vedioPlay/vedioPlay";
	}
	/**
	 * 人脸登陆
	 * @param request
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "/faceLoginController.action")
	@ResponseBody
	public String faceLoginController(HttpServletRequest request ,HttpSession session) throws Exception {
		String base = request.getParameter("base");
		Map<String, Object> returnMap=new HashMap<>();
		boolean resultSuccess = FaxeCheck.getResult(base);
		if (resultSuccess) {
			//人脸检测成功
			//注册成功;则返回前端,并把图片返回到前端,并返回检测美丑
			
			String result= (String) FaxeCheck.checkBeautiful(base);
			JSONObject fromObject = JSONObject.fromObject(result);
    		JSONObject jsonArray = fromObject.getJSONObject("result");
    		boolean flag=false;
    		String faceNum =jsonArray.getString("face_num");
    		List<Map<String, Object>> list=(List<Map<String, Object>>) jsonArray.get("face_list");
    		Map<String, Object> map=list.get(0);
    		
    		//人脸唯一标示
    		String faceToken =map.get("face_token").toString();
    		//人脸置信度
    		String faceProbability =(String) map.get("face_probability").toString();
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
	    	session.setAttribute("rigthEye", rigthEye);
	    	//情绪
	    	Map<String,Object> map6 = (Map<String, Object>) map.get("emotion");
	    	String emotion =map6.get("type").toString();
	    	//人类
	    	Map<String,Object> map7 = (Map<String, Object>) map.get("face_type");
	    	String faceType =map7.get("type").toString();
	    	
	    	//检测用户信息,先默认是gropu001
	    	String resultUserInfo =FaxeCheck.search(base, "gropu001");
	    	JSONObject fromObjectUserInfo = JSONObject.fromObject(resultUserInfo);
    		JSONObject jsonArrayUserInfo = fromObjectUserInfo.getJSONObject("result");
    		List<Map<String, Object>> listUserInfo=(List<Map<String, Object>>) jsonArrayUserInfo.get("user_list");
    		Map<String, Object> userInfoMap=listUserInfo.get(0);
    		String userIdName =(String) userInfoMap.get("user_id");//用户Name
    		String groupIdName=(String) userInfoMap.get("group_id");//用户组ID
    		String userInfoName=(String) userInfoMap.get("user_info");//用户信息
    		String scoreInfoName=(String) userInfoMap.get("score").toString();//分数阀值
    		
    		
    		
	    	session.setAttribute("age", age);
	    	session.setAttribute("beauty", beauty);
	    	session.setAttribute("emotion", emotion);
	    	session.setAttribute("expression", expression);
	    	session.setAttribute("faceNum", faceNum);
	    	session.setAttribute("faceProbability", faceProbability);
	    	session.setAttribute("faceShape", faceShape);
	    	session.setAttribute("faceType", faceType);
	    	session.setAttribute("gender", gender);
	    	session.setAttribute("leftEye", leftEye);
	    	session.setAttribute("race", race);
			session.setAttribute("faceToken", faceToken);
	    	session.setAttribute("src","../upload/"+userIdName+".jpeg" );
	    	session.setAttribute("userIdName", userIdName);
	    	Person userNameBoolean=loginServices.findByUserName(userIdName);
	    	session.setAttribute("loginCount", userNameBoolean.getLoginCount());
	    	session.setAttribute("isLevel", userNameBoolean.getIsLevel());
	    	session.setAttribute("isPower", userNameBoolean.getIsPower());
	    	session.setAttribute("creatTime", userNameBoolean.getCreateTime());
	    	boolean person= loginServices.updateScore(String.valueOf(beauty),userIdName);
	    	//当用户是不是第一登陆的时候,更新数据库用户的得分
	    	if(0!=userNameBoolean.getLoginCount()) {
	    		session.setAttribute("newScore", beauty);
	    		session.setAttribute("oldScore", userNameBoolean.getScore());
	    	}
		} else {
			//人脸检测失败
	    	session.setAttribute("ME0000", "登陆失败,未检测到人脸");
	    	return "ME0000";
		}
		return "000000";
	}
	
	
	/**
	 * 人脸注册
	 * @param request
	 * @return
	 * @throws Exception 
	 */
	@RequestMapping(value = "/faceLoginRegister.action")
	@ResponseBody
	public String faceLoginRegister(HttpServletRequest request) throws Exception {
		String json =request.getParameter("json");
		JSONObject  jasonObject = JSONObject.fromObject(json);
		Map map = (Map)jasonObject;
		//String base = request.getParameter("base");
		String userName =map.get("userName").toString();
		//校验该用户名有没有被注册;
		Person userNameBoolean=loginServices.findByUserName(userName);
		if(null==userNameBoolean) {
			//该用户已被注册
			return "MY4445";
		}
		
		String base=map.get("base").toString();
		/*boolean resultSuccess = FaxeCheck.getResult(base);
		if(resultSuccess) {
			//人脸已经被注册
			return "ME4446";
		}*/
		
		String registerFace =  (String) FaxeCheck.registerFace(base,userName,userName);
		if(!"".equals(registerFace)) {
			//注册成功,把base数据存到数据库中;
		boolean baseBoolean = loginServices.addUserNameAndBase(userName,registerFace);
		if(baseBoolean) {
			//注册成功
			BaseToImage.Upload(base, userName+".jpeg");
			//BaseToImage.GenerateImage(base,"/images/"+userName+".jpeg");
			return "000000";
		}else {
			return "ME4444";
		}
			
		}
		return "ME4444";
	}
	
	@RequestMapping(value = "/addloginRegister.action")
	@ResponseBody
	public String loginRegisterController(HttpServletRequest request) throws InterruptedException {
		/*String userName1 =request.getParameter("userName");
		String passWord1 =request.getParameter("password");*/
		String json =request.getParameter("json");
		JSONObject  jasonObject = JSONObject.fromObject(json);
		Map map = (Map)jasonObject;
		String userName =map.get("userName").toString();
		String passWord=map.get("password").toString();
		if(loginServices.addUserPassWord(userName, passWord)) {
			//注册成功,跳转成功页面
			return "000000";
		}else {
			//注册失败,跳转原有页面
			return "ME0000";
		}
	}
	
	@RequestMapping(value = "/loginSuccess.action")
	public String loginSuccess(HttpServletRequest request) {
		String userName =request.getParameter("username");
		String passWord =request.getParameter("password");
		if("".equals(userName)||"".equals(passWord)) {
			return "errorPage/error";
		}
		
		String loginStr = loginServices.findUserNameAndPassWord(userName,passWord);
		return "admin/loginSuccess";
	}
	
	
	
	@RequestMapping(value = "/vedioPlay.action")
	@ResponseBody
	public String vedioPlay(HttpServletRequest request,HttpSession session) {

		String beauty =request.getParameter("beauty");
		String userName =(String) session.getAttribute("userIdName");
		String loginCount =session.getAttribute("loginCount").toString();
		String creatTime =(String) session.getAttribute("creatTime");
		String newScore =(String) session.getAttribute("newScore");
		String oldScore =(String) session.getAttribute("oldScore");
		
		String vedioString="";
		if("0".equals(loginCount)) {
			//用户第一次登陆
			vedioString ="亲爱的"+userName+"同学,很荣幸您能注册本网站,即将为您打印本次注册的人脸检测信息。";
			
			getVedio(vedioString);
			return "";
		}else {
			vedioString="";
			int oldS =Integer.parseInt(oldScore);
			int  newS =Integer.parseInt(newScore);
			if(newS>oldS) {
				vedioString=userName +"同学,这次得分比上次提高了"+(newS-oldS)+"分哦！";
			}else {
				vedioString=userName +"同学,这次得分比上次低了了"+(newS-oldS)+"分哦！,努力提高颜值吧！";
			}
		}
		return "";
	}
	
	/**
	 *声音阅读 
	 * @param vedioString
	 */
	public void getVedio(String vedioString) {
		ActiveXComponent sap = new ActiveXComponent("Sapi.SpVoice");
		try {
			// 音量 0-100
			sap.setProperty("Volume", new Variant(100));
			// 语音朗读速度 -10 到 +10
			sap.setProperty("Rate", new Variant(-2));
			// 获取执行对象
			Dispatch sapo = sap.getObject();
			// 执行朗读
			Dispatch.call(sapo, "Speak", new Variant(vedioString));
			// 关闭执行对象
			sapo.safeRelease();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			// 关闭应用程序连接
			
			sap.safeRelease();
		}
	}
}
