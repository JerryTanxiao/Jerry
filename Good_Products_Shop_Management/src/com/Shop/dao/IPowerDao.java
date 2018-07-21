package com.Shop.dao;

import java.util.List;

import com.Shop.entity.Permission;
import com.Shop.util.PageResult;

public interface IPowerDao {
	public abstract PageResult getPagingPowerDao(int currentPage,int pageSize);
	public abstract int savePowerDao(Permission per);
	public abstract int updatePowerDao(Permission per);
}
