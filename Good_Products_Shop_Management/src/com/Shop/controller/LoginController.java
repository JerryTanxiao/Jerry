package com.Shop.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;
import com.Shop.entity.User;
import com.Shop.service.IUserService;
import com.Shop.util.RolePerData;

@SessionAttributes(value={"user","rpd"})
@Controller
@Scope("prototype")
public class LoginController{
	@Autowired
	private IUserService userService;
	@RequestMapping("/login.do")
	@ResponseBody
	public User loginAdmin(@RequestParam("username") String username,@RequestParam("password") String password,ModelMap map){
		System.out.println(username+" "+password);
		User user = userService.getUserWherePasswordService(username, password);
		map.addAttribute("user", user);
		RolePerData rpd = userService.getRoleAndPermissionService(user);
		map.addAttribute("rpd", rpd);
		return user;	
	}
	@RequestMapping("/getRoleAndPermission.do")
	@ResponseBody
	public RolePerData getRoleAndPermission(@SessionAttribute("user") User user , ModelMap map){
		RolePerData rpd = userService.getRoleAndPermissionService(user);
		map.addAttribute("rpds", rpd);
		return rpd;	
	}
	@ResponseBody
	@RequestMapping("/updatePassword.do")
	public boolean updateAdmin(@SessionAttribute("user") User user,String password){
		System.out.println(user+" "+password);
		boolean b=userService.updatePasswordService(user, password);
		return b;
	}
	@RequestMapping("/loginoff.do")
	public String logoff(HttpSession session){
		session.invalidate();
		return "forward:/WEB-INF/jsp/login.jsp";
	}
	@RequestMapping("/index.do")
	public String index(){
		return "forward:/WEB-INF/jsp/index.jsp";
	}
	@RequestMapping("/permissiondenied.do")
	public String permissiondenied(){
		return "forward:/WEB-INF/jsp/permissiondenied.jsp";
	}
	
}
