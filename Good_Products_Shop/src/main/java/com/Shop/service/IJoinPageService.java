package com.Shop.service;

import java.util.List;

import com.Shop.entity.Join;
import com.Shop.util.PageResult;

public interface IJoinPageService {
	public List<Join> getListDataService();
	public int getNumberPageSizeService();
	public PageResult getpage(int currentPage,int pageSize);
}
