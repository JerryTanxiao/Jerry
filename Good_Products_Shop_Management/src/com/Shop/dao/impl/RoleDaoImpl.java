package com.Shop.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.Shop.dao.IRoleDao;
import com.Shop.dao.IUserDao;
import com.Shop.entity.Password;
import com.Shop.entity.Permission;
import com.Shop.entity.Role;
import com.Shop.entity.RoleAndPermission;
import com.Shop.entity.User;
import com.Shop.util.PageResult;

@Repository
public class RoleDaoImpl implements IRoleDao{
	@Autowired
	private HibernateTemplate template;
	@Override
	public List<Permission> getAllPowerDao() {
		List<Permission> pers = (List<Permission>) template.find("from Permission");
		return pers;
	}
	@Override
	public Role saveRoleDao(Role role) {
		template.save(role);
		return role;
	}
	@Override
	public PageResult getPagingRoleDao(int currentPage,int pageSize) {
		Session session = template.getSessionFactory().getCurrentSession();
		int i =(int)((long) session.createQuery("select count(*) from Role").uniqueResult());
		List<Role> roles = session.createQuery("from Role").setFirstResult((currentPage-1)*10).setMaxResults(pageSize).list();
		PageResult results=new PageResult(roles,i,currentPage,pageSize);
		return results;
	}
	@Override
	public int updateRoleDao(Role role,int[] ids) {
		int count=0;
		Role r=template.load(Role.class, role.getRoleId());
//		User u = template.get(User.class, user.getId());
//		if(user.getUsername()!=null&&user.getUsername()!=""){
//			u.setUsername(user.getUsername());
//			count++;
//		}
//		if(user.getMobile()!=null&&user.getMobile()!=""){
//			u.setMobile(user.getMobile());
//			count++;
//		}
//		if(user.getEmail()!=null&&user.getEmail()!=""){
//			u.setEmail(user.getEmail());
//			count++;
//		}
		return count;
	}
	@Override
	public int saveRAPByRoleIdDao(int[] ids, int roleid) {
		int i=0;
		Role role = template.load(Role.class, roleid);
		for(int id:ids){
			Permission per = template.load(Permission.class, id);
			RoleAndPermission rap=new RoleAndPermission();
			rap.setRole_id(role);
			rap.setPermission_id(per);
			i = (int) template.save(rap);
		}
		return i;
	}
}
