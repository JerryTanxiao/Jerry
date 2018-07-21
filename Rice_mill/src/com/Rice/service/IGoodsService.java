package com.Rice.service;

import java.util.List;

import com.Rice.entity.Goods;

public interface IGoodsService {
	List<Goods> getGoods();
	List<Goods> getGoodsbydiscountsname();
	Integer findNewCont();
	List<Goods> findNewsPage(Integer start,Integer pagesize);
	List<Goods> getGoodsByGoodsType(String goodstype);
	
	List<Goods> getGoodsByGoodsDate();
	
}
