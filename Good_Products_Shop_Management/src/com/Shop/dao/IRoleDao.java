package com.Shop.dao;

import java.util.List;

import com.Shop.entity.Permission;
import com.Shop.entity.Role;
import com.Shop.util.PageResult;

public interface IRoleDao {
	public abstract PageResult getPagingRoleDao(int currentPage,int pageSize);
	public abstract Role saveRoleDao(Role role);
	public abstract int saveRAPByRoleIdDao(int[] ids,int roleid);
	public abstract int updateRoleDao(Role role,int[] ids);
	public abstract List<Permission> getAllPowerDao();
}
