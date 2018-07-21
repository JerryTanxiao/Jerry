package com.Rice.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.Rice.entity.Consumption;
import com.Rice.entity.Member;
import com.Rice.entity.Recharge;
import com.Rice.entity.User;
import com.Rice.service.IVIPService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
@Scope("prototype")
public class VIPController {
	@Autowired
	private IVIPService vip;
	@ResponseBody
	@RequestMapping("isUpdateMemberYes.do")
	public Boolean isUpdateMemberYes(@RequestBody Member member,HttpServletRequest req){
		member.setmUsername(((User) req.getSession().getAttribute("user")).getUsername());
		System.out.println(member);
		Boolean b = vip.updateMember(member);
		return b;
	}
	@ResponseBody
	@RequestMapping("vip2Data.do")
	public Boolean vip2Data(HttpServletRequest req,@RequestParam(defaultValue="1") int pageNum){
		HttpSession session=req.getSession();
		User user = (User) session.getAttribute("user");
		System.out.println(user);
		if(user==null){
			return false;
		}
		PageHelper.startPage(pageNum, 10);
		List<Consumption> cp = vip.getAllConsumptionByMemberId(user.getUsername());
		PageInfo<Consumption> pic = new PageInfo<Consumption>(cp);
		System.out.println(cp.get(0));
		session.setAttribute("pic", pic);
		Boolean b=false;
		return b;
	}
	@ResponseBody
	@RequestMapping("vip3Data.do")
	public Boolean vip3Data(HttpServletRequest req,@RequestParam(defaultValue="1") int pageNum){
		HttpSession session=req.getSession();
		User user = (User) session.getAttribute("user");
		System.out.println(user);
		if(user==null){
			return false;
		}
		PageHelper.startPage(pageNum, 10);
		List<Recharge> re = vip.getAllRechargeByMemberId(user.getUsername());
		PageInfo<Recharge> pir = new PageInfo<Recharge>(re);
		session.setAttribute("pir", pir);
		Boolean b=false;
		return b;
	}
}
