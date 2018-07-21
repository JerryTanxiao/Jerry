package com.Shop.service;

import java.util.List;

import com.Shop.entity.Admin;

public interface IAdminService {
	public abstract boolean getLoginAdminService(String username,String password);
	public abstract Admin getAdminService(String username,String password);
	public abstract List<Admin> getAllAdminService();
	public abstract boolean deleteAdminService(int id);
	public abstract boolean saveAdminService(Admin admin);
	public abstract boolean updateAdminService(Admin admin);
	public abstract boolean updateAdminService(int id,String password);
}
