package com.Shop.service;

import java.util.List;

import com.Shop.entity.CompanyHistory;

public interface IHistoryService {
	/**
	 * 存储对象到数据库
	 * @param history 要存储的对象
	 * @return 是否成功
	 */
	public abstract boolean saveHistoryService(CompanyHistory history);
	/**
	 * 从数据库获取对象的集合
	 * @return 对象的集合
	 */
	public abstract List<CompanyHistory> getHistoryService();
	/**
	 * 从数据库获取指定id对象的集合
	 * @param id 要查找的id
	 * @return 对象的集合
	 */
	public abstract List<CompanyHistory> getHistoryService(int id);
}
