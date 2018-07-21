package com.Shop.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Shop.dao.IManageDao;
import com.Shop.entity.AdminLog;
import com.Shop.service.IManageService;

@Service
public class ManageServiceImpl implements IManageService{
	@Autowired
	private IManageDao manageDao;
	@Override
	public List<AdminLog> getLogService() {
		return manageDao.getLogDao();
	}

}
