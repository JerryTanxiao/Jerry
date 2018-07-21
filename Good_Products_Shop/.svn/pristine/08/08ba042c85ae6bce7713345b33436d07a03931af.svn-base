package com.Shop.service;

import java.util.List;

import com.Shop.entity.Company;

public interface ICompanyService {
	/**
	 * 从数据库获取Company对象的集合
	 * @param hql hql语句
	 * @return 对象的集合
	 */
	public abstract List<Company> getCompanyService(String hql);
	/**
	 * 从数据库获取Company对象的集合
	 * @param hql hql语句
	 * @param values 在hql语句有条件的时候，可根据需要写对应的参数
	 * @return 对象的集合
	 */
	public abstract List<Company> getCompanyService(String hql,Object...values);
	/**
	 * 存储数据到数据库
	 * @param company 要存储的对象entity
	 * @return 存储成功则为true
	 */
	public abstract boolean saveCompanyService(Company company);
	/**
	 * 删除数据库的数据
	 * @param id 要删除的数据的id
	 * @return 删除成功则为true
	 */
	public abstract boolean deleteCompanyService(int id);
	/**
	 * 删除数据库的数据
	 * @param hql 自己写删除数据库数据的hql语句
	 * @return 删除成功则为true
	 */
	public abstract boolean deleteCompanyService(String hql);
	/**
	 * 更新数据库数据
	 * @param hql 自己写更新数据库数据的hql语句
	 * @param id 指要更新的数据的id
	 * @return 更新成功则为true
	 */
	public abstract boolean updateCompanyService(String hql,int id);
}
