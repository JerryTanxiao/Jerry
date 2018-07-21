package com.Shop.controller;

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
import com.Shop.service.IPowerService;
import com.Shop.service.IRoleService;
import com.Shop.util.PageResult;

@Controller
@RequestMapping("/power")
@Scope("prototype")
public class PowerController {
	@Autowired
	private IPowerService powerService;
	@RequestMapping("/addPower.do")
	@ResponseBody
	public boolean addPower(@RequestBody Permission per){
		boolean b = powerService.savePowerService(per);
		return b;
	}
	@RequestMapping("/getPagingPower.do")
	@ResponseBody
	public PageResult getPagingPower(@RequestBody int currentPage,@RequestParam(defaultValue="10") int pageSize){
		System.out.println("先看看这两个家伙："+currentPage+" "+pageSize);
		PageResult result=powerService.getPagingPowerService(currentPage,pageSize);
		System.out.println("看看这个结果："+result);
		return result;
	}
	@RequestMapping("/updatePower.do")
	@ResponseBody
	public boolean updatePower(@RequestBody Permission per){
		boolean b = powerService.updatePowerService(per);
		return b;
	}
	@RequestMapping("/goUpdate.do")
	public String goUpdate(int id,HttpServletRequest request){
		request.setAttribute("id", id);
		System.out.println(request.getAttribute("id"));
		return "forward:/WEB-INF/jsp/updatePower.jsp";
	}
	@RequestMapping("/goPower.do")
	public String goPower(){
		return "forward:/WEB-INF/jsp/power.jsp";
	}
	@RequestMapping("/goAdd.do")
	public String goAdd(){
		return "forward:/WEB-INF/jsp/addPower.jsp";
	}
}
