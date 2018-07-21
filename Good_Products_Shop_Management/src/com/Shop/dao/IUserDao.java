package com.Shop.dao;

import java.util.List;

import com.Shop.entity.Role;
import com.Shop.entity.User;
import com.Shop.entity.UserAndRole;
import com.Shop.util.PageResult;
import com.Shop.util.RolePerData;

public interface IUserDao {
	public abstract List<User> getAllUserDao();
	public abstract PageResult getPagingUserDao(int currentPage,int pageSize);
	public abstract User getUserWherePasswordDao(String username,String password);
	public abstract RolePerData getRoleAndPermissionDao(User user);	
	public abstract int updatePasswordDao(User user,String password);
	public abstract int saveUserDao(UserAndRole uar);
	public abstract int updateUserDao(UserAndRole uar);
	public abstract int updateRecoveryUserDao(int id);
	public abstract List<Role> getAllRoleDao();
}
