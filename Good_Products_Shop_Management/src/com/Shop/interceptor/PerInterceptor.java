package com.Shop.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.Shop.util.RolePerData;

public class PerInterceptor implements HandlerInterceptor{

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		System.out.println("权限拦截开始！！！");
		HttpSession session = request.getSession();
		if(session.getAttribute("rpd")!=null){
			RolePerData rpd = (RolePerData) session.getAttribute("rpd");
			if(!rpd.getPercodes().isEmpty()){
				String str=request.getServletPath();
				System.out.println(str);
				if(str.indexOf("/")!=str.lastIndexOf("/")){
					String name=str.substring(str.indexOf("/")+1, str.lastIndexOf("/"));
					if(rpd.getPercodes().contains(name)){
						return true;
					}else{
						request.getRequestDispatcher("/permissiondenied.do").forward(request, response);					
					}								
				}else{
					return false;
				}
			}else{
				request.getRequestDispatcher("/permissiondenied.do").forward(request, response);					
			}		
		}else{
			request.getRequestDispatcher("/permissiondenied.do").forward(request, response);				
		}		
		return false;
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		System.out.println("权限hander : " + handler);
//		System.out.println("权限要跳转到的视图是 ： " + modelAndView.getViewName());
	}

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		System.out.println("权限视图渲染后......");
		System.out.println(handler);
	}

}
