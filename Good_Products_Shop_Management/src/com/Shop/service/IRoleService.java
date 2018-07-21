package com.Shop.service;

import java.util.List;

import com.Shop.entity.Permission;
import com.Shop.entity.Role;
import com.Shop.util.PageResult;

public interface IRoleService {
	public abstract PageResult getPagingRoleService(int currentPage,int pageSize);
	public abstract Role saveRoleService(Role role);
	public abstract boolean saveRAPByRoleIdDao(int[] ids,int roleid);
	public abstract boolean updateRoleService(Role role,int[] ids);
	public abstract List<Permission> getAllPowerService();
}
