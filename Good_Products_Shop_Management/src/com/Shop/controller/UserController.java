package com.Shop.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.Shop.entity.AdminLog;
import com.Shop.entity.Role;
import com.Shop.entity.User;
import com.Shop.entity.UserAndRole;
import com.Shop.service.IManageService;
import com.Shop.service.IUserService;
import com.Shop.util.PageResult;
import com.Shop.util.RolePerData;

@Controller
@RequestMapping("/user")
@Scope("prototype")
public class UserController {
	@Autowired
	private IManageService manageService;
	@Autowired
	private IUserService userService;
	private String code="Aa";
	@RequestMapping("/log.do")
	@ResponseBody
	public List<AdminLog> getLog(){
		List<AdminLog> logs = manageService.getLogService();
		if(logs.isEmpty()){
			return new ArrayList<AdminLog>();
		}
		return logs;
	}
	@RequestMapping("/getAllUser.do")
	@ResponseBody
	public List<User> getUser(){
		List<User> users=userService.getAllUserService();
		System.out.println("看看是啥样子："+users);
		return users;
	}
	@RequestMapping("/addUser.do")
	@ResponseBody
	public boolean addUser(@RequestBody UserAndRole uar){
		uar.getUser_id().setCreateTime(new Date());
		uar.getUser_id().setLastLoginTime(new Date());
		boolean b = userService.saveUserService(uar);
		return b;
	}
	@RequestMapping("/getPagingUser.do")
	@ResponseBody
	public PageResult getPagingUser(@RequestBody int currentPage,@RequestParam(defaultValue="10") int pageSize){
		System.out.println("先看看这两个家伙："+currentPage+" "+pageSize);
		PageResult result=userService.getPagingUserService(currentPage,pageSize);
		System.out.println("看看这个结果："+result);
		return result;
	}
	@RequestMapping("/updateUser.do")
	@ResponseBody
	public boolean updateUser(@RequestBody UserAndRole uar){
		System.out.println(uar);
		boolean b = userService.updateUserService(uar);
		return b;
	}
	@RequestMapping("/recoveryUser.do")
	@ResponseBody
	public boolean recoveryUser(@RequestBody int id){
		System.out.println(id);
		boolean b = userService.updateRecoveryUserService(id);
		return b;
	}
	@RequestMapping("/getAllRole.do")
	@ResponseBody
	public List<Role> getRole(){
		List<Role> users=userService.getAllRoleService();
		return users;
	}
	@RequestMapping("/goUpdate.do")
	public String goUpdate(int id,HttpServletRequest request,@SessionAttribute("rpd") RolePerData rpd){
		request.setAttribute("id", id);
		System.out.println(request.getAttribute("id"));
		return "forward:/WEB-INF/jsp/updateUser.jsp";
	}
	@RequestMapping("/goAdd.do")
	public String goAdd(){
		return "forward:/WEB-INF/jsp/addUser.jsp";
	}
	@RequestMapping("/goUser.do")
	public String goUpdate(){
		return "forward:/WEB-INF/jsp/user2.jsp";
	}
}
