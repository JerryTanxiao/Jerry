package com.Shop.dao;

import java.util.List;

import com.Shop.entity.Admin;

public interface IAdminDao {
	public abstract int getLoginAdminDao(String username,String password);
	public abstract Admin getAdminDao(String username,String password);
	public abstract List<Admin> getAllAdminDao();
	public abstract int deleteAdminDao(int id);
	public abstract int saveAdminDao(Admin admin);
	public abstract int updateAdminDao(Admin admin);
	public abstract int updateAdminDao(int id,String password);
	
}
