package com.Rice.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.Rice.entity.Goods;
import com.Rice.mapper.GoodsMapper;
import com.Rice.service.IGoodsService;
@Service
public class GoodsServiceImpl implements IGoodsService {
	@Autowired
	GoodsMapper  goodsmapper;
	@Override
	public List<Goods> getGoods() {
		if(goodsmapper.selectdiscountsGoodsBydiscountsname()!=null){
			return goodsmapper.selectdiscountsGoodsBydiscountsname();
		}else{
			return null;
		}
	}
	@Override
	public List<Goods> getGoodsbydiscountsname() {
		return goodsmapper.selectdiscountsGoodsBydiscountsname();
	}
	@Override
	public Integer findNewCont() {
		return goodsmapper.findNewCont();
	}
	@Override
	public List<Goods> findNewsPage(Integer start, Integer pagesize) {
		return goodsmapper.findNewsPage(start, pagesize);
	}
	
	@Override
	public List<Goods> getGoodsByGoodsType(String goodstype) {
		return goodsmapper.selectGoodsByGoodsType(goodstype);
	}
	@Override
	public List<Goods> getGoodsByGoodsDate() {
		return goodsmapper.selectGoodsByGoodsDate();
	}
	
}
