package com.Shop.dao;

import java.util.List;

import com.Shop.entity.Goods;
import com.Shop.entity.GoodsVO;
import com.Shop.util.PageResult;
public interface IGoodsDao {
		public List<GoodsVO> getListGoods();
		public List<GoodsVO> getListGoods(String type,String value);
		public int  saveListGoods(GoodsVO goods);
		public int  updateListGoods(GoodsVO goods);
		public int  deleteListGoods(int id);
		
		
		public List<GoodsVO> getListDataVO(int currentPage,int pageSize);
		public List<Goods> getGoodsLike(int currentPage,int pageSize,String name);
		public List<GoodsVO> getGoodsVOLike(int currentPage,int pageSize,String name,String type);
		/**
		 * 通过Goods类id进行查询
		 * @param id 
		 * @return 一条结果集
		 */
		public List<Goods> getgoodsbyid(int id);
		/**
		 *获取总页数 
		 * @return
		 */
		public int getNumberPageSize();
		public int getNumberPageSizeVO(String name,String type);
		public PageResult page(int currentPage,int pageSize);
		public PageResult pagegoods(int currentPage,int pageSize);
		public PageResult pagegoodslike(int currentPage,int pageSize,String name);
		public PageResult pagegoodsVOlike(int currentPage,int pageSize,String name,String type);
		
		/**
		 * 图片上传
		 */
		public String  saveFilepath(String filename,Goods goods);
}
