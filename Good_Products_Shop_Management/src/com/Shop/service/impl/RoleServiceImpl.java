package com.Shop.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Shop.dao.IRoleDao;
import com.Shop.dao.IUserDao;
import com.Shop.entity.Permission;
import com.Shop.entity.Role;
import com.Shop.entity.User;
import com.Shop.service.IRoleService;
import com.Shop.service.IUserService;
import com.Shop.util.PageResult;

@Service
public class RoleServiceImpl implements IRoleService{
	@Autowired
	private IRoleDao roleDao;
	@Override
	public List<Permission> getAllPowerService() {
		return roleDao.getAllPowerDao();
	}
	@Override
	public Role saveRoleService(Role role) {
		return roleDao.saveRoleDao(role);
	}
	@Override
	public PageResult getPagingRoleService(int currentPage,int pageSize) {
		return roleDao.getPagingRoleDao(currentPage,pageSize);
	}
	@Override
	public boolean updateRoleService(Role role,int[] ids) {
		return roleDao.updateRoleDao(role,ids)>0;
	}
	@Override
	public boolean saveRAPByRoleIdDao(int[] ids, int roleid) {
		return roleDao.saveRAPByRoleIdDao(ids, roleid)>0;
	}
}
