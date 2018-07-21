package com.Shop.dao.impl;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.Shop.dao.IJoinPageDao;
import com.Shop.entity.Join;
import com.Shop.util.PageResult;

@Repository
public class JoinPageDaoImpl  implements IJoinPageDao{
	@Autowired
	private HibernateTemplate hibernateTemplate;
	//获取商品的结果集
	@Override
	public List<Join> getListData(int currentPage,int pageSize) {
//		return (List<Join>) hibernateTemplate.find("from Join ");
		List<Join> join= (List<Join>) hibernateTemplate.getSessionFactory().getCurrentSession().createQuery("from Join").
				setFirstResult((currentPage-1)*pageSize).
				setMaxResults(pageSize).list();
		for(Join j:join){
			System.out.println(j);
		}
		 return join;
	}
	//获取总条数
	@Override
	public int getNumberPageSize() {
//		int i =((BigInteger) hibernateTemplate.getSessionFactory().getCurrentSession().createSQLQuery("select count(*) from t_join").list().get(0)).intValue();
		long count=(long)hibernateTemplate.getSessionFactory().getCurrentSession().createQuery("select count(*) from Join")
		.setMaxResults(1)
		.uniqueResult();
		System.out.println(count);
		return (int) count; 
	}
	/**
	 * 分页查询
	 * currentPage：用户传递的当前页
	 * pageSize：用户传递的页面大小
	 * 返回分页的结果对象
	 */
	@Override
	public PageResult page(int currentPage, int pageSize) {
		List<Join> listData=getListData(currentPage,pageSize);
		int totalcount=getNumberPageSize();
		PageResult result=new PageResult(listData, totalcount, currentPage, pageSize);
		return result;
	}

}
