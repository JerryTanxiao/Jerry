package com.Shop.dao;
import java.util.List;
public interface IObjectDao {
	/**
	 * 通过sql查询全部或者通过关键词类名.变量 获取对应数据
	 * @param 类名
	 * @param sql语句
	 * @return 结果集
	 */
	public List<Object> getObject(Object object,String sql);
	/**
	 * 通过hibernateTemplate和数据库交互，通过类的getset方法进行保存
	 * @param object
	 * @return 几条对象
	 */
	public int saveObject(Object object);
	/**
	 * 必须要给明要修改对象
	 * @param object
	 * @return 结果集
	 */
	public int updateObject(Object object);
	/**
	 * 必须要给明要删除的对象
	 * @param object
	 * @return	结果集
	 */
	public int deleteObject(Object object);
}
