package com.Shop.controller;

import java.net.InetAddress;
import java.util.Date;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import com.Shop.entity.Admin;
import com.Shop.entity.AdminLog;
import com.Shop.util.SessionBox;


@Component
//@Aspect
public class AspectLog {
	@Autowired
	private SessionFactory factory;
	
//	@Pointcut("within(com.Shop.dao.impl.*)")
	@Pointcut("execution(public * com.Shop.service.impl.*.get*(..))")
	public void select(){} 
	@Pointcut("execution(public * com.Shop.service.impl.*.update*(..))")
	public void update(){} 
	@Pointcut("execution(public * com.Shop.service.impl.*.delete*(..))")
	public void delete(){} 
	@Pointcut("execution(public * com.Shop.service.impl.*.save*(..))")
	public void insert(){} 
	
	@Around("select()")
	public Object around_select(ProceedingJoinPoint pjp) throws Throwable {
		System.out.println("开始！！！！！！！！！！");
		Admin sessionAdmin=SessionBox.getSessionAdmin();
		Object retVal = pjp.proceed();
		if(!"getLogService".equals(pjp.getSignature().getName())){
			if(sessionAdmin!=null){
				AdminLog log=new AdminLog();
				String operation="通过"+pjp.getSignature().getDeclaringTypeName()+"."+pjp.getSignature().getName()+"()方法执行了查询操作，方法返回类型"+retVal.getClass();
				log.setAdmin(sessionAdmin.getAdmin_username());
				log.setDate(new Date());
				log.setIp(InetAddress.getLocalHost().getHostAddress());
				log.setOperation(operation);
				log.setType("select");
				log.setRemark("success");
				System.out.println(log);
				Session session=factory.getCurrentSession();
				session.save(log);
			}			
		}
		System.out.println("结束！！！！！！！！！！");			
		return retVal;
	}
	
	
	@Around("update()")
	public Object around_update(ProceedingJoinPoint pjp) throws Throwable {
		System.out.println("开始！！！！！！！！！！");
		Admin sessionAdmin=SessionBox.getSessionAdmin();
		Object retVal = pjp.proceed();
		if(sessionAdmin!=null){
			AdminLog log=new AdminLog();
			String operation="通过"+pjp.getSignature().getDeclaringTypeName()+"."+pjp.getSignature().getName()+"()方法执行了查询操作，方法返回类型"+retVal.getClass();
			log.setAdmin(sessionAdmin.getAdmin_username());
			log.setDate(new Date());
			log.setIp(InetAddress.getLocalHost().getHostAddress());
			log.setOperation(operation);
			log.setType("update");
			log.setRemark("success");
			System.out.println(log);
			Session session=factory.getCurrentSession();
			session.save(log);				
		}
		System.out.println("结束！！！！！！！！！！");			
		return retVal;
	}
	@Around("delete()")
	public Object around_delete(ProceedingJoinPoint pjp) throws Throwable {
		System.out.println("开始！！！！！！！！！！");
		Admin sessionAdmin=SessionBox.getSessionAdmin();
		Object retVal = pjp.proceed();
		if(sessionAdmin!=null){
			AdminLog log=new AdminLog();
			String operation="通过"+pjp.getSignature().getDeclaringTypeName()+"."+pjp.getSignature().getName()+"()方法执行了查询操作，方法返回类型"+retVal.getClass();
			log.setAdmin(sessionAdmin.getAdmin_username());
			log.setDate(new Date());
			log.setIp(InetAddress.getLocalHost().getHostAddress());
			log.setOperation(operation);
			log.setType("delete");
			log.setRemark("success");
			System.out.println(log);
			Session session=factory.getCurrentSession();
			session.save(log);
		}
		System.out.println("结束！！！！！！！！！！");			
		return retVal;
	}
	@Around("insert()")
	public Object around_insert(ProceedingJoinPoint pjp) throws Throwable {
		System.out.println("开始！！！！！！！！！！");
		Admin sessionAdmin=SessionBox.getSessionAdmin();
		Object retVal = pjp.proceed();
		if(sessionAdmin!=null){
			AdminLog log=new AdminLog();
			String operation="通过"+pjp.getSignature().getDeclaringTypeName()+"."+pjp.getSignature().getName()+"()方法执行了查询操作，方法返回类型"+retVal.getClass();
			log.setAdmin(sessionAdmin.getAdmin_username());
			log.setDate(new Date());
			log.setIp(InetAddress.getLocalHost().getHostAddress());
			log.setOperation(operation);
			log.setType("insert");
			log.setRemark("success");
			System.out.println(log);
			Session session=factory.getCurrentSession();
			session.save(log);
		}
		System.out.println("结束！！！！！！！！！！");			
		return retVal;
	}
}
