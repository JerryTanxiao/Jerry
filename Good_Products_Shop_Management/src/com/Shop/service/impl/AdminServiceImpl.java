package com.Shop.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Shop.dao.IAdminDao;
import com.Shop.entity.Admin;
import com.Shop.service.IAdminService;

@Service
public class AdminServiceImpl implements IAdminService{
	@Autowired
	private IAdminDao adminDao;
	@Override
	public boolean getLoginAdminService(String username, String password) {
		return adminDao.getLoginAdminDao(username, password)>0;
	}

	@Override
	public Admin getAdminService(String username, String password) {
		return adminDao.getAdminDao(username, password);
	}

	@Override
	public boolean updateAdminService(int id,String password) {
		return adminDao.updateAdminDao(id, password)>0;
	}

	@Override
	public List<Admin> getAllAdminService() {
		return adminDao.getAllAdminDao();
	}

	@Override
	public boolean deleteAdminService(int id) {
		return adminDao.deleteAdminDao(id)>0;
	}

	@Override
	public boolean saveAdminService(Admin admin) {
		return adminDao.saveAdminDao(admin)>0;
	}

	@Override
	public boolean updateAdminService(Admin admin) {
		return adminDao.updateAdminDao(admin)>0;
	}

}
