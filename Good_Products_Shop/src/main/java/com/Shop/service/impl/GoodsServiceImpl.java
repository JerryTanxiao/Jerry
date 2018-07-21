package com.Shop.service.impl;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.Shop.dao.IGoodsDao;
import com.Shop.entity.Goods;
import com.Shop.entity.GoodsType;
import com.Shop.service.IGoodsService;
import com.Shop.util.PageResult;
@Service
public class GoodsServiceImpl implements IGoodsService{
	@Autowired
	private IGoodsDao goodsDao;
	@Override
	public boolean saveGoodsTypeService(GoodsType goodsType) {
		return goodsDao.saveGoodsTypeDao(goodsType)>0;
	}
	@Override
	public boolean saveGoodsService(Goods goods) {
		return goodsDao.saveGoodsDao(goods)>0;
	}
	@Override
	public boolean saveGoodsService(Goods goods, int i) {
		return goodsDao.saveGoodsDao(goods, i)>0;
	}
	@Override
	public List<Goods> getListDataService() {
		return goodsDao.getListData(0, 0, 0);
	}
	@Override
	public int getNumberPageSizeService() {
		return goodsDao.getNumberPageSize();
	}
	@Override
	public PageResult getpage(int currentPage, int pageSize,int id) {
		return  goodsDao.page(currentPage, pageSize, id);
	}
	@Override
	public List<String> getGoodsTypeService(int id) {
		return goodsDao.getGoodsTypeDao(id);
	}
	@Override
	public List<String> getAllGoodsTypeService() {
		return goodsDao.getAllGoodsTypeDao();
	}
	@Override
	public List<GoodsType> getGoodsType() {
		return goodsDao.getGoodsType();
	}
}
