package com.Shop.service;

import java.util.List;

import com.Shop.entity.Goods;
import com.Shop.entity.GoodsVO;
import com.Shop.entity.Join;
import com.Shop.util.PageResult;

public interface IGoodsService {
	/**
	 * 查询所有
	 * @return
	 */
	public List<GoodsVO> getListgoodsService();
	public List<GoodsVO> getListgoodsService(String type,String value);
	public Boolean updateListGoods(GoodsVO goods);
	public Boolean saveListGoods(GoodsVO goods);
	public Boolean deleteListGoods(int id);
	
	
	
	public List<Goods> getgoodsbyid(int id);
	public List<GoodsVO> getListDataServiceVO();
	public int getNumberPageSizeService();
	public PageResult getpage(int currentPage,int pageSize);
	public PageResult getpagegoods(int currentPage,int pageSize);
	public PageResult getpagegoodslike(int currentPage,int pageSize,String name);
	public PageResult getpagegoodsvolike(int currentPage,int pageSize,String name,String type);
	
	/**
	 * 获取图片
	 */
	public String saveFilepath(String filename,Goods goods);
}
