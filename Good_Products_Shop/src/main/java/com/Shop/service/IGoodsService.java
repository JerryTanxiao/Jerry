package com.Shop.service;

import java.util.List;

import com.Shop.entity.Goods;
import com.Shop.entity.GoodsType;
import com.Shop.util.PageResult;

public interface IGoodsService {
	/**
	 * 存储数据到数据库中
	 * @param goodsType 要存储的对象
	 * @return 如果执行条数>0 ，为true
	 */
	public abstract boolean saveGoodsTypeService(GoodsType goodsType);
	/**
	 * 存储数据到数据库中
	 * @param goods 要存储的对象
	 * @return 如果执行条数>0 ，为true
	 */
	public abstract boolean saveGoodsService(Goods goods);
	/**
	 * 存储数据到数据库中
	 * @param goods 要存储的对象
	 * @param i 要关联的外键的id
	 * @return 如果执行条数>0 ，为true
	 */
	public abstract boolean saveGoodsService(Goods goods,int i);
	
	public List<Goods> getListDataService();
	public int getNumberPageSizeService();
	public PageResult getpage(int currentPage, int pageSize, int id);
	/**
	 * 查询指定id的数据
	 * @param id 指定的id
	 * @return 结果的集合
	 */
	public abstract List<String> getGoodsTypeService(int id);
	/**
	 * 查询指定条数的数据，从头到尾依次查询
	 * @param num 指定的条数
	 * @return 结果的集合
	 */
	public abstract List<String> getAllGoodsTypeService();
	public abstract List<GoodsType> getGoodsType();
}
