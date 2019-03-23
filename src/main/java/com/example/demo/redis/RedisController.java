package com.example.demo.redis;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;


@RestController
public class RedisController {
	@Autowired
	private RedisClusterUtil redisClusterUtil;
	
	@RequestMapping(value="/test",method = RequestMethod.GET)
	public void demoTest() {
		redisClusterUtil.set("1", "value222222");
		System.out.println("设置缓存成功");
		Object tt=redisClusterUtil.get("1");
		System.out.println(""+tt);
	}
}
