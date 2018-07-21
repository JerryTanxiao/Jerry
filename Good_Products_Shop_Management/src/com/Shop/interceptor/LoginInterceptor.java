package com.Shop.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class LoginInterceptor implements HandlerInterceptor{

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		System.out.println("登陆拦截开始！！！");
		HttpSession session = request.getSession();
		if(session.getAttribute("user")!=null){
			return true;
		}
		request.getRequestDispatcher("loginoff.do").forward(request, response);
		return false;
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		System.out.println("登陆hander : " + handler);
//		System.out.println("登陆要跳转到的视图是 ： " + modelAndView.getViewName());
	}

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		System.out.println("登陆视图渲染后......");
		System.out.println(handler);
	}

}
