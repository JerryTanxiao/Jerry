package com.Shop.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Shop.dao.IUserDao;
import com.Shop.entity.Role;
import com.Shop.entity.User;
import com.Shop.entity.UserAndRole;
import com.Shop.service.IUserService;
import com.Shop.util.PageResult;
import com.Shop.util.RolePerData;

@Service
public class UserServiceImpl implements IUserService{
	@Autowired
	private IUserDao userDao;
	@Override
	public List<Role> getAllRoleService() {
		return userDao.getAllRoleDao();
	}
	@Override
	public List<User> getAllUserService() {
		return userDao.getAllUserDao();
	}
	@Override
	public User getUserWherePasswordService(String username,String password){
		return userDao.getUserWherePasswordDao(username, password);
	}
	@Override
	public boolean updatePasswordService(User user, String password) {
		return userDao.updatePasswordDao(user, password)>0;
	}
	@Override
	public boolean saveUserService(UserAndRole uar) {
		return userDao.saveUserDao(uar)>0;
	}
	@Override
	public PageResult getPagingUserService(int currentPage,int pageSize) {
		return userDao.getPagingUserDao(currentPage,pageSize);
	}
	@Override
	public boolean updateUserService(UserAndRole uar) {
		return userDao.updateUserDao(uar)>0;
	}
	@Override
	public boolean updateRecoveryUserService(int id) {
		return userDao.updateRecoveryUserDao(id)>0;
	}
	@Override
	public RolePerData getRoleAndPermissionService(User user) {
		return userDao.getRoleAndPermissionDao(user);
	}
	
}
