package com.Rice.controller;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.Rice.entity.Member;
import com.Rice.entity.User;
import com.Rice.service.IUserService;
@Controller
@Scope("prototype")
public class UserController {
	@Autowired
	IUserService userService;
	
	@RequestMapping("loginVerify.do")
	@ResponseBody
	public Boolean loginVerify(@RequestBody User user,HttpSession session){
		System.out.println("sessionId : "+session.getId());
		boolean b=false;
		User login = userService.getLoginByUser(user);
		if(login!=null){
			session.setAttribute("user", login);
			Member member = userService.getMemberByUser(login);
			if(member!=null){
				b=true;
				session.setAttribute("member", member);
			}
		}
		return b;
	}
	@ResponseBody
	@RequestMapping("cancellation.do")
	public Boolean cancellation(HttpServletRequest request){
		HttpSession session=request.getSession();
		session.removeAttribute("user");
		if(session.getAttribute("user")==null){
			return true;			
		}
		return false;
	}
	@ResponseBody
	@RequestMapping("isSessionHaveUser.do")
	public User isSessionHaveUser(HttpServletRequest req){
		User user = (User) req.getSession().getAttribute("user");
		return user;
	}
}
