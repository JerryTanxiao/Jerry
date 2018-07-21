package com.Shop.dao.impl;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.Shop.dao.IUserDao;
import com.Shop.entity.Password;
import com.Shop.entity.Role;
import com.Shop.entity.RoleAndPermission;
import com.Shop.entity.User;
import com.Shop.entity.UserAndRole;
import com.Shop.util.PageResult;
import com.Shop.util.RolePerData;

@Repository
public class UserDaoImpl implements IUserDao{
	@Autowired
	private HibernateTemplate template;
	@Override
	public List<Role> getAllRoleDao() {
		List<Role> roles = (List<Role>) template.find("from Role");
		return roles;
	}
	@Override
	public List<User> getAllUserDao() {
		List<User> users = (List<User>) template.find("from User");
		return users;
	}
	@Override
	public User getUserWherePasswordDao(String username,String password){
		List<Password> passwords = (List<Password>) template.find("from Password where password=?", password);
		if(!passwords.isEmpty()){
			User user = passwords.get(0).getUser_id();
			if(username.equals(user.getUsername())){
				return user;
			}	
		}
		return null;
	}
	@Override
	public int updatePasswordDao(User user, String password) {
		int i = template.getSessionFactory().getCurrentSession().createSQLQuery(
				"update t_password set password=? where user_id=?")
				.setParameter(0, password).setParameter(1, user).executeUpdate();
		return i;
	}
	@Override
	public int saveUserDao(UserAndRole uar) {
		User user=uar.getUser_id();
		int i = (int) template.save(user);
		Password uap=new Password();
		List<User> users = (List<User>) template.find("from User where id=?",user.getId());
		if(!users.isEmpty()){
			uap.setUser_id(users.get(0));
			uap.setPassword("123456");	
		}
		i = (int) template.save(uap);
		Role role = template.load(Role.class, uar.getRole_id().getRoleId());
		uar.setRole_id(role);
		System.out.println(uar);
		i = (int) template.save(uar);
		return i;
	}
	@Override
	public PageResult getPagingUserDao(int currentPage,int pageSize) {
		Session session = template.getSessionFactory().getCurrentSession();
		int i =(int)((long) session.createQuery("select count(*) from User where del=0").uniqueResult());
		List<User> users = session.createQuery("from User where del=0").setFirstResult((currentPage-1)*10).setMaxResults(pageSize).list();
		PageResult results=new PageResult(users,i,currentPage,pageSize);
		return results;
	}
	@Override
	public int updateUserDao(UserAndRole uar) {
		int count=0;
		User user = uar.getUser_id();
		User u = template.load(User.class, user.getId());
		if(user.getUsername()!=null&&user.getUsername()!=""){
			u.setUsername(user.getUsername());
			count++;
		}
		if(user.getMobile()!=null&&user.getMobile()!=""){
			u.setMobile(user.getMobile());
			count++;
		}
		if(user.getEmail()!=null&&user.getEmail()!=""){
			u.setEmail(user.getEmail());
			count++;
		}
		Role role = template.load(Role.class, uar.getRole_id().getRoleId());
		List<UserAndRole> uars=(List<UserAndRole>) template.find("from UserAndRole where user_id=?", u);
		if(!uars.isEmpty()){
			uars.get(0).setRole_id(role);
			count++;
		}
		return count;
	}
	@Override
	public int updateRecoveryUserDao(int id) {
		int count=0;
		User user = template.get(User.class, id);
		if(user.getId()>0){
			user.setDel(1);
			count++;
		}
		return count;
	}
	@Override
	public RolePerData getRoleAndPermissionDao(User user) {
		Set<String> perCodes=new HashSet<String>();
		List<UserAndRole> uars = (List<UserAndRole>) template.find("from UserAndRole where user_id=?",user);
		Role role=uars.get(0).getRole_id();
		List<RoleAndPermission> raps =(List<RoleAndPermission>) template.find("from RoleAndPermission where role_id=?", role);
		for(RoleAndPermission rap:raps){
			perCodes.add(rap.getPermission_id().getPermissionSpace());
		}
		RolePerData rpd=new RolePerData(role.getRoleName(), perCodes);
		return rpd;
	}
}
