package com.Shop.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Shop.dao.IHistoryDao;
import com.Shop.entity.CompanyHistory;
import com.Shop.service.IHistoryService;

@Service
public class HistoryServiceImpl implements IHistoryService{
	@Autowired
	private IHistoryDao historyDao;
	
	@Override
	public boolean saveHistoryService(CompanyHistory history) {
		return historyDao.saveHistoryDao(history)>0;
	}

	@Override
	public List<CompanyHistory> getHistoryService() {
		return historyDao.getHistoryDao();
	}

	@Override
	public List<CompanyHistory> getHistoryService(int id) {
		return historyDao.getHistoryDao(id);
	}

}
