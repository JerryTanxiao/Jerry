package com.Shop.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Shop.dao.IPowerDao;
import com.Shop.dao.IRoleDao;
import com.Shop.dao.IUserDao;
import com.Shop.entity.Permission;
import com.Shop.entity.Role;
import com.Shop.entity.User;
import com.Shop.service.IPowerService;
import com.Shop.service.IRoleService;
import com.Shop.service.IUserService;
import com.Shop.util.PageResult;

@Service
public class PowerServiceImpl implements IPowerService{
	@Autowired
	private IPowerDao powerDao;
	@Override
	public PageResult getPagingPowerService(int currentPage, int pageSize) {
		return powerDao.getPagingPowerDao(currentPage, pageSize);
	}
	@Override
	public boolean savePowerService(Permission per) {
		return powerDao.savePowerDao(per)>0;
	}
	@Override
	public boolean updatePowerService(Permission per) {
		return powerDao.updatePowerDao(per)>0;
	}
}
