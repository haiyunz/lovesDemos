package com.example.demo.faceCheck;


import java.io.BufferedReader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.baidu.aip.face.AipFace;
import com.example.demo.util.GetTon;
import com.example.demo.util.GsonUtils;
import com.example.demo.util.HttpUtil;

import net.sf.json.JSONObject;

public class FaxeCheck {

	public static boolean getResult(String imStr1) throws Exception {

		boolean flag = false;
		String result = "";

		// �������ַ
		String mathUrl = "https://aip.baidubce.com/rest/2.0/face/v3/match";
		Map<String, Object> map1 = new HashMap<>();
		List<Map<String, Object>> images = new ArrayList<>();
		map1.put("image", imStr1);
		map1.put("image_type", "BASE64");
		map1.put("face_type", "LIVE");
		map1.put("quality_control", "LOW");
		map1.put("liveness_control", "NORMAL");

		Map<String, Object> map2 = new HashMap<>();
		map2.put("image", imStr1);
		map2.put("image_type", "BASE64");
		map2.put("face_type", "LIVE");
		map2.put("quality_control", "LOW");
		map2.put("liveness_control", "NORMAL");

		images.add(map1);
		images.add(map2);

		String param = GsonUtils.toJson(images);

		// 注意这里仅为了简化编码每一次请求都去获取access_token，线上环境access_token有过期时间， 客户端可自行缓存，过期后重新获取。
		String accessToken = GetTon.getToken();
		result = HttpUtil.post(mathUrl, accessToken, "application/json", param);
		JSONObject fromObject = JSONObject.fromObject(result);
		JSONObject jsonArray = fromObject.getJSONObject("result");

		for (int i = 0; i < jsonArray.size(); i++) {
			double resultList = jsonArray.getDouble("score");
			if (resultList >= 90) {
				flag = true;
				return flag;
			}
		}
		return flag;
	}

	public static Object checkBeautiful(String baseStr) {
		// 请求url
		String accessToken = GetTon.getToken();
		String url = "https://aip.baidubce.com/rest/2.0/face/v3/detect";
		try {
			Map<String, Object> map = new HashMap<>();
			map.put("image", baseStr);
			map.put("face_field",
					"age,beauty,expression,face_shape,gender,glasses,race,quality,eye_status,emotion,face_type");
			map.put("image_type", "BASE64");

			String param = GsonUtils.toJson(map);
			System.out.println(param);
			// 注意这里仅为了简化编码每一次请求都去获取access_token，线上环境access_token有过期时间， 客户端可自行缓存，过期后重新获取。
			String result = HttpUtil.post(url, accessToken, "application/json", param);
			System.out.println(result);
			return result;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public static Object registerFace(String base64, String userId, String groupId) {
		// https://aip.baidubce.com/rest/2.0/face/v3/faceset/user/add
		String url = "https://aip.baidubce.com/rest/2.0/face/v3/faceset/user/add";
		try {
			Map<String, Object> map = new HashMap<>();
			List<Map<String, Object>> images = new ArrayList<>();
			map.put("group_id", "gropu001");
			map.put("user_id", userId);
			map.put("image_type", "BASE64");
			map.put("image", base64);
			String param = GsonUtils.toJson(map);
			// 注意这里仅为了简化编码每一次请求都去获取access_token，线上环境access_token有过期时间， 客户端可自行缓存，过期后重新获取。
			String accessToken = GetTon.getToken();

			String result = HttpUtil.post(url, accessToken, "application/json", param);
			JSONObject fromObject = JSONObject.fromObject(result);
			JSONObject jsonArray = fromObject.getJSONObject("result");
			boolean flag = false;
			for (int i = 0; i < jsonArray.size(); i++) {
				String resultList = jsonArray.getString("face_token");
				if (resultList.length() > 0) {
					flag = true;
					return resultList;
				} else {
					return "";
				}
			}
			return "";
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public Object faceRegister() {
		// 人脸在线注册工具地址
		String url = "https://ai.baidu.com/facekit/page/form/A1FDCC8F6CFB4FE09A710CDE4084D9D8";
		return null;
	}

	/**
	 * 查询用户信息
	 * 
	 * @return
	 */
	public static String get(String userId, String groupId) {
		// 请求url
		String url = "https://aip.baidubce.com/rest/2.0/face/v3/faceset/user/get";
		try {
			Map<String, Object> map = new HashMap<>();
			map.put("user_id", userId);
			map.put("group_id", groupId);
			String param = GsonUtils.toJson(map);
			// 注意这里仅为了简化编码每一次请求都去获取access_token，线上环境access_token有过期时间， 客户端可自行缓存，过期后重新获取。
			String accessToken = GetTon.getToken();
			;
			String result = HttpUtil.post(url, accessToken, "application/json", param);
			System.out.println(result);
			return result;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	/**
	 * 人脸搜索
	 */
	public static String search(String base,String groupId) {
		// 请求url
		String url = "https://aip.baidubce.com/rest/2.0/face/v3/search";
		try {
			Map<String, Object> map = new HashMap<>();
			map.put("image", base);
			map.put("liveness_control", "NORMAL");
			map.put("group_id_list", groupId);
			map.put("image_type", "BASE64");
			map.put("quality_control", "LOW");

			String param = GsonUtils.toJson(map);

			// 注意这里仅为了简化编码每一次请求都去获取access_token，线上环境access_token有过期时间， 客户端可自行缓存，过期后重新获取。
			String accessToken = GetTon.getToken();;

			String result = HttpUtil.post(url, accessToken, "application/json", param);
			System.out.println(result+"查看");
			return result;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public static void main(String[] args) {
		get("132222222", "gropu001");
	}
}
