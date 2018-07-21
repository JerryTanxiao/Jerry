package com.Shop.dao;

import java.util.List;

import com.Shop.entity.CompanyHistory;

public interface IHistoryDao {
	/**
	 * 存储对象到数据库
	 * @param history 要存储的对象
	 * @return 执行成功的sql条数
	 */
	public abstract int saveHistoryDao(CompanyHistory history);
	/**
	 * 获取对象的集合
	 * @return 对象的集合
	 */
	public abstract List<CompanyHistory> getHistoryDao();
	/**
	 * 获取指定id的对象的集合
	 * @param id 指定的id
	 * @return 对象的集合
	 */
	public abstract List<CompanyHistory> getHistoryDao(int id);
}
