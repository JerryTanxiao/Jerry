package com.Rice.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.Rice.entity.Goods;
@Mapper
public interface GoodsMapper {
	/**
	 * 查询所有食品
	 * @return
	 */
	List<Goods> selectGoods();
	/**
	 * 查询所有优惠商品
	 * @return
	 */
	List<Goods> selectdiscountsGoodsBydiscountsname();
	
	Integer findNewCont();
	List<Goods> findNewsPage(@Param("start")Integer start,@Param("pagesize")Integer pagesize);
	List<Goods> getGoodsByType(String goodstype);
	List<Goods> selectGoodsByGoodsname();
	
	
	@Select("select * from t_goods where goodstype=#{goodstype}")
	List<Goods> selectGoodsByGoodsType(@Param("goodstype") String goodstype);
	@Select("select * from t_goods where goodsdate>DATE_SUB(NOW(),INTERVAL 6 day)")
	List<Goods> selectGoodsByGoodsDate();
}
