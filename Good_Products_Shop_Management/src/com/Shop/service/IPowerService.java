package com.Shop.service;

import java.util.List;

import com.Shop.entity.Permission;
import com.Shop.util.PageResult;

public interface IPowerService {
	public abstract PageResult getPagingPowerService(int currentPage,int pageSize);
	public abstract boolean savePowerService(Permission per);
	public abstract boolean updatePowerService(Permission per);
}
