package com.Shop.controller;

import java.lang.reflect.Array;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.Shop.entity.Permission;
import com.Shop.entity.Role;
import com.Shop.entity.RoleAndPermission;
import com.Shop.service.IRoleService;
import com.Shop.util.PageResult;

@Controller
@RequestMapping("/role")
@Scope("prototype")
public class RoleController {
	@Autowired
	private IRoleService roleService;
	@RequestMapping("/getAllPower.do")
	@ResponseBody
	public List<Permission> getPower(){
		List<Permission> powers=roleService.getAllPowerService();
		System.out.println("看看是啥样子："+powers);
		return powers;
	}
	@RequestMapping("/addRole.do")
	@ResponseBody
	public int addRole(@RequestBody Role role){
		return roleService.saveRoleService(role).getRoleId();
	}
	@RequestMapping("/addPerToRole.do")
	@ResponseBody
	public boolean addPerToRole(@RequestBody int[] ids,int roleid){
		boolean b = roleService.saveRAPByRoleIdDao(ids, roleid);
		return b;
	}
	@RequestMapping("/updatePerToRole.do")
	@ResponseBody
	public boolean updatePerToRole(@RequestBody int[] ids,int roleid){
		System.out.println(ids+" "+roleid);
//		boolean b = roleService.saveRAPByRoleIdDao(ids, roleid);
		return false;
	}
	@RequestMapping("/getPagingRole.do")
	@ResponseBody
	public PageResult getPagingRole(@RequestBody int currentPage,@RequestParam(defaultValue="10") int pageSize){
		System.out.println("先看看这两个家伙："+currentPage+" "+pageSize);
		PageResult result=roleService.getPagingRoleService(currentPage,pageSize);
		System.out.println("看看这个结果："+result);
		return result;
	}
	@RequestMapping("/updateRole.do")
	@ResponseBody
	public boolean updateRole(@RequestBody Role role,int[] ids){
		System.out.println();
		System.out.println(role);
		boolean b = roleService.updateRoleService(role,ids);
		return b;
	}
	@RequestMapping("/goUpdate.do")
	public String goUpdate(int id,HttpServletRequest request){
		request.setAttribute("roleId", id);
		return "forward:/WEB-INF/jsp/updateRole.jsp";
	}
	@RequestMapping("/goRole.do")
	public String goRole(){
		return "forward:/WEB-INF/jsp/role.jsp";
	}
	@RequestMapping("/goAdd.do")
	public String goAdd(){
		return "forward:/WEB-INF/jsp/addRole.jsp";
	}
}
