package com.Shop.dao;

import java.util.List;

import com.Shop.entity.Company;

public interface ICompanyDao {
	/**
	 * 从数据库获取Company对象的集合
	 * @param hql hql语句
	 * @return 对象的集合
	 */
	public abstract List<Company> getCompanyDao(String hql);
	/**
	 * 从数据库获取Company对象的集合
	 * @param hql hql语句
	 * @param values 在hql语句有条件的时候，可根据需要写对应的参数
	 * @return 对象的集合
	 */
	public abstract List<Company> getCompanyDao(String hql,Object...values);
	/**
	 * 存储数据到数据库
	 * @param company 要存储的对象entity
	 * @return 执行成功的sql条数
	 */
	public abstract int saveCompanyDao(Company company);
	/**
	 * 删除数据库的数据
	 * @param id 要删除的数据的id
	 * @return 执行成功的sql条数
	 */
	public abstract int deleteCompanyDao(int id);
	/**
	 * 删除数据库的数据
	 * @param hql 自己写hql语句
	 * @return 执行成功的sql条数
	 */
	public abstract int deleteCompanyDao(String hql);
	/**
	 * 更改数据库的数据
	 * @param hql 自己写hql的预注入语句，必须id=?
	 * @param id  要更改的数据的id
	 * @return 执行成功的sql条数
	 */
	public abstract int updateCompanyDao(String hql,int id);
	
}
