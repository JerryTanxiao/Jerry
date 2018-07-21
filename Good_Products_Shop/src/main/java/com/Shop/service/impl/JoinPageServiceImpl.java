package com.Shop.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Shop.dao.IJoinPageDao;
import com.Shop.entity.Join;
import com.Shop.service.IJoinPageService;
import com.Shop.util.PageResult;
@Service
public class JoinPageServiceImpl  implements IJoinPageService{
	@Autowired
	private IJoinPageDao joinPageDao;
	@Override
	public List<Join> getListDataService() {
		return joinPageDao.getListData(0, 0);
	}

	@Override
	public int getNumberPageSizeService() {
		return joinPageDao.getNumberPageSize();
	}

	@Override
	public PageResult getpage(int currentPage, int pageSize) {
		return  joinPageDao.page(currentPage, pageSize);
	}
	

}
