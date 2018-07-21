package com.Shop.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.Shop.dao.IPowerDao;
import com.Shop.dao.IRoleDao;
import com.Shop.dao.IUserDao;
import com.Shop.entity.Password;
import com.Shop.entity.Permission;
import com.Shop.entity.Role;
import com.Shop.entity.User;
import com.Shop.util.PageResult;

@Repository
public class PowerDaoImpl implements IPowerDao{
	@Autowired
	private HibernateTemplate template;
	@Override
	public PageResult getPagingPowerDao(int currentPage, int pageSize) {
		Session session = template.getSessionFactory().getCurrentSession();
		int i =(int)((long) session.createQuery("select count(*) from Permission").uniqueResult());
		List<Permission> powers = session.createQuery("from Permission").setFirstResult((currentPage-1)*10).setMaxResults(pageSize).list();
		PageResult results=new PageResult(powers,i,currentPage,pageSize);
		return results;
	}
	@Override
	public int savePowerDao(Permission per) {
		int i = (int) template.save(per);
		return i;
	}
	@Override
	public int updatePowerDao(Permission per) {
		// TODO Auto-generated method stub
		return 0;
	}
}
