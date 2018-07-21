package com.Shop.dao;

import java.util.List;
import com.Shop.entity.Goods;
import com.Shop.entity.GoodsType;
import com.Shop.util.PageResult;
public interface IGoodsDao {
	/**
	 * 存储数据到数据库中
	 * @param goodsType 要存储的对象
	 * @return 执行的sql条数
	 */
	public abstract int saveGoodsTypeDao(GoodsType goodsType);
	/**
	 * 存储数据到数据库中
	 * @param goods 要存储的对象
	 * @return 执行的sql条数
	 */
	public abstract int saveGoodsDao(Goods goods);
	/**
	 * 存储数据到数据库中
	 * @param goods 要存储的对象
	 * @param i 要关联的外键的id
	 * @return 执行的sql条数
	 */
	public abstract int saveGoodsDao(Goods goods,int i);

	public int getNumberPageSize();
	public List<Goods> getListData(int currentPage, int pageSize, int id);
	public PageResult page(int currentPage, int pageSize, int id);
	/**
	 * 查询指定id的数据
	 * @param id 指定的id
	 * @return 结果的集合
	 */
	public abstract List<String> getGoodsTypeDao(int id);
	/**
	 * 查询指定条数的数据，从头到尾依次查询
	 * @param num 指定的条数
	 * @return 结果的集合
	 */
	public abstract List<String> getAllGoodsTypeDao();
	
	public List<GoodsType> getGoodsType();
}
