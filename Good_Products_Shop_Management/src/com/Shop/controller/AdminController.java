package com.Shop.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;
import com.Shop.entity.Admin;
import com.Shop.service.IAdminService;
import com.Shop.util.AdminView.View;
import com.Shop.util.SessionBox;
import com.fasterxml.jackson.annotation.JsonView;

@SessionAttributes("admin")
@Controller
@RequestMapping("/shop")
@Scope("prototype")
public class AdminController {
	@Autowired
	private IAdminService adminService;
	@RequestMapping("/admin.do")
	@ResponseBody
	public Admin loginAdmin(@RequestBody Admin admin,ModelMap map){
		System.out.println(admin.getAdmin_username()+" "+admin.getAdmin_password());
		Admin administ = adminService.getAdminService(admin.getAdmin_username(), admin.getAdmin_password());
		if(administ!=null){
			map.addAttribute("admin", administ);
			SessionBox.setSessionAdmin(administ);
			return administ;
		}else{
			return new Admin();
		}
	}
	@ResponseBody
	@RequestMapping("/updateAdmin.do")
	public boolean updateAdmin(@SessionAttribute("admin") Admin admin,String password){
		System.out.println(admin.getAdmin_id()+" "+password);
		boolean b=adminService.updateAdminService(admin.getAdmin_id(), password);
		return b;
	}
	@JsonView(View.class)
	@RequestMapping("/getAdmin.do")
	@ResponseBody
	public List<Admin> getUser(){
		List<Admin> admins = adminService.getAllAdminService();
		return admins;
	}
	@ResponseBody
	@RequestMapping("/saveAdmin.do")
	public boolean saveAdmin(@RequestBody Admin admin){
		if(null==admin.getAdmin_username()||admin.getAdmin_username()==""){
			return false;
		}
		return adminService.saveAdminService(admin);
	}
	@ResponseBody
	@RequestMapping("/deleteAdmin.do")
	public boolean deleteAdmin(@RequestBody int id){
		System.out.println(id);
		return adminService.deleteAdminService(id);
	}
	@ResponseBody
	@RequestMapping("/updateAdmin2.do")
	public boolean updateAdmin(@RequestBody Admin admin){
		System.out.println(admin);
		return adminService.updateAdminService(admin);
	}
	
	@RequestMapping("/index.do")
	public String index(){
		return "/index.jsp";
	}
}
