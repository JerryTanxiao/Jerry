package com.Shop.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.Shop.dao.IAdminDao;
import com.Shop.entity.Admin;

@Repository
public class AdminDaoImpl implements IAdminDao{
	@Autowired
	private HibernateTemplate template;
	@Override
	public int getLoginAdminDao(String username, String password) {
		int i=template.find("from Admin where admin_username=? and admin_password=?", username,password).size();
		System.out.println("getLoginAdminDao:i="+i);
		return i;
	}

	@Override
	public Admin getAdminDao(String username, String password) {
		List<Admin> admins=(List<Admin>) template.find("from Admin where admin_username=? and admin_password=?",username,password);
		if(admins.isEmpty()){
			return null;
		}
		System.out.println("getLoginAdminDao:admins="+admins);
		return admins.get(0);
	}

	@Override
	public int updateAdminDao(int id,String password) {
		int i = template.getSessionFactory().getCurrentSession().createSQLQuery(
				"update t_admin set admin_password=? where admin_id=?")
				.setParameter(0, password).setParameter(1, id).executeUpdate();
		return i;
	}

	@Override
	public List<Admin> getAllAdminDao() {
		return (List<Admin>) template.find("from Admin");
	}

	@Override
	public int deleteAdminDao(int id) {
		int i=template.getSessionFactory().getCurrentSession().createSQLQuery(
				"delete from t_admin where admin_id=?").setParameter(0, id).executeUpdate();
		return i;
	}

	@Override
	public int saveAdminDao(Admin admin) {
		int i = (int) template.save(admin);
		return i;
	}

	@Override
	public int updateAdminDao(Admin admin) {
		Admin a = template.get(Admin.class, admin.getAdmin_id());
		a.setAdmin_level(admin.getAdmin_level());
		a.setAdmin_role(admin.getAdmin_role());
		a.setAdmin_username(admin.getAdmin_username());
		try {
			template.update(a);			
		} catch (Exception e) {
			return 0;
		}
		return 1;
	}
	
}
