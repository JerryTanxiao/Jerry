package com.Shop.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Shop.dao.IGoodsDao;
import com.Shop.entity.Goods;
import com.Shop.entity.GoodsVO;
import com.Shop.entity.Join;
import com.Shop.service.IGoodsService;
import com.Shop.util.PageResult;
@Service
public class GoodsServiceImpl  implements IGoodsService{
	@Autowired
	private IGoodsDao goodsDao;

	@Override
	public int getNumberPageSizeService() {
		return goodsDao.getNumberPageSize();
	}


	@Override
	public List getListDataServiceVO() {
		return goodsDao.getListDataVO(0,0);
	}

	@Override
	public List<Goods> getgoodsbyid(int id) {
		return goodsDao.getgoodsbyid(id);
	}

	@Override
	public PageResult getpage(int currentPage, int pageSize) {
		return  goodsDao.page(currentPage, pageSize);
	}
	@Override
	public PageResult getpagegoods(int currentPage, int pageSize) {
		return  goodsDao.pagegoods(currentPage, pageSize);
	}

	@Override
	public PageResult getpagegoodslike(int currentPage, int pageSize, String name) {
		return goodsDao.pagegoodslike(currentPage, pageSize, name);
	}

	@Override
	public PageResult getpagegoodsvolike(int currentPage, int pageSize, String name,String type) {
		return goodsDao.pagegoodsVOlike(currentPage, pageSize, name,type);
	}

	
	/**
	 * CRUD
	 */
	@Override
	public List<GoodsVO> getListgoodsService() {
		return goodsDao.getListGoods();
	}

	@Override
	public List<GoodsVO> getListgoodsService(String type, String value) {
		return goodsDao.getListGoods(type, value);
	}
	@Override
	public Boolean updateListGoods(GoodsVO goods) {
		return goodsDao.updateListGoods(goods)>0;
	}

	@Override
	public Boolean saveListGoods(GoodsVO goods) {
		return goodsDao.saveListGoods(goods)>0;
	}

	@Override
	public Boolean deleteListGoods(int id) {
		return goodsDao.deleteListGoods(id)>0;
	}

	@Override
	public String saveFilepath(String filename, Goods goods) {
		return goodsDao.saveFilepath(filename, goods);
	}

}
