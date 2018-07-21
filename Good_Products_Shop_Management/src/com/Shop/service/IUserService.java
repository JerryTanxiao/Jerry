package com.Shop.service;

import java.util.List;

import com.Shop.entity.Role;
import com.Shop.entity.User;
import com.Shop.entity.UserAndRole;
import com.Shop.util.PageResult;
import com.Shop.util.RolePerData;

public interface IUserService {
	public abstract List<User> getAllUserService();
	public abstract PageResult getPagingUserService(int currentPage,int pageSize);
	public abstract User getUserWherePasswordService(String username,String password); 
	public abstract RolePerData getRoleAndPermissionService(User user);	
	public abstract boolean updatePasswordService(User user,String password);
	public abstract boolean saveUserService(UserAndRole uar);
	public abstract boolean updateUserService(UserAndRole uar);
	public abstract boolean updateRecoveryUserService(int id);
	public abstract List<Role> getAllRoleService();
}
