package com.Rice.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.Rice.entity.Diet;
import com.Rice.entity.Member;
import com.Rice.entity.User;
import com.Rice.service.IDietService;
import com.Rice.service.IUserService;
import com.alibaba.fastjson.JSON;
@RestController // 实现和前端交互 满足所有rest风格 不需要添加 @ResponseBody可以直接和ajax交互
public class RestAllController {
	@Autowired
	IUserService userService;
	/**
	 * /User/{id} {id}/User.do web.xml记得配置*.do REST风格：即 Representational State
	 * Transfer （资源）表现层状态转化
	 */
	@GetMapping("{username}/User.do")
	public ModelAndView mvc(ModelAndView mvc, @PathVariable("username") String username) {
		System.out.println(username);
		User user = new User();
		User users = userService.getLoginByUser(user);
		mvc.setViewName("index");
		System.out.println(users);
		return mvc;
	}

	@PostMapping("{user}/registerUser.do")
	public Boolean registerUser(@PathVariable("user") String users) {
		Boolean b=true;
		User user= JSON.parseObject(users, User.class);
		if(userService.insterUserReturnUserId(user)<=0){
			b=false;
		};
		Member m = new Member();
		m.setmVipLevel("9");
		m.setmUsername(user.getUsername());
		if(userService.insterMemberReturnMemberId(m)<=0){
			b=false;
		}
		System.out.println(b);
		return b;
	}
	
}
