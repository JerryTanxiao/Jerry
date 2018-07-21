package com.Shop.dao.impl;

import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import com.Shop.dao.IGoodsDao;
import com.Shop.entity.Goods;
import com.Shop.entity.GoodsType;
import com.Shop.util.PageResult;

@Repository
public class GoodsDaoImpl implements IGoodsDao{
	@Autowired
	private HibernateTemplate hibernateTemplate;
	@Override
	public int saveGoodsTypeDao(GoodsType goodsType) {
		int i = (int) hibernateTemplate.save(goodsType);
		return i;
	}
	@Override
	public int saveGoodsDao(Goods goods) {
		int i = (int) hibernateTemplate.save(goods);
		return i;
	}
	@Override
	public int saveGoodsDao(Goods goods, int i) {
		int is = 0;
		if(i>0){
			GoodsType goodstype = hibernateTemplate.get(GoodsType.class, i);
			goods.setGoodsType(goodstype);
			is = (int) hibernateTemplate.save(goods);			
		}
		return is;
	}
	@Override
	public List<Goods> getListData(int currentPage, int pageSize,int id) {
		@SuppressWarnings("unchecked")
		List<Goods> good=(List<Goods>) hibernateTemplate.getSessionFactory().getCurrentSession().createQuery(" "
				+ "from Goods g where g.goodsType.id=?")
				.setParameter(0,id)
				.setFirstResult((currentPage-1)*pageSize)
				.setMaxResults(pageSize).list();
		System.out.println(good);
		return good;
	}
	@Override
	public int getNumberPageSize() {
		long count=(long)hibernateTemplate.getSessionFactory().getCurrentSession().createQuery("select count(*) from Goods")
				.setMaxResults(1)
				.uniqueResult();
				System.out.println(count);
				return (int) count; 
	}
	@Override
	public PageResult page(int currentPage, int pageSize,int id) {
		List<Goods> listData=getListData(currentPage,pageSize,id);
		int totalcount=getNumberPageSize();
		PageResult result=new PageResult(listData, totalcount, currentPage, pageSize);
		return result;
	}
	@Override
	public List<String> getGoodsTypeDao(int id) {
		List<String> gts = hibernateTemplate.getSessionFactory().getCurrentSession().createSQLQuery("select id from t_goodstype where id=?").setParameter(0, id).list();
		List<String> gts1 = hibernateTemplate.getSessionFactory().getCurrentSession().createSQLQuery("select name from t_goodstype where id=?").setParameter(0, id).list();
		List<String> gts2 = hibernateTemplate.getSessionFactory().getCurrentSession().createSQLQuery("select image from t_goodstype where id=?").setParameter(0, id).list();
		gts.addAll(gts1);
		gts.addAll(gts2);
		return gts;
	}
	@Override
	public List<String> getAllGoodsTypeDao() {
		List<String> gts=new ArrayList<String>();
		gts.addAll(hibernateTemplate.getSessionFactory().getCurrentSession().createSQLQuery("select id from t_goodstype").list());
		gts.addAll(hibernateTemplate.getSessionFactory().getCurrentSession().createSQLQuery("select name from t_goodstype").list());
		gts.addAll(hibernateTemplate.getSessionFactory().getCurrentSession().createSQLQuery("select image from t_goodstype").list());
		return gts;
	}
	@Override
	public List<GoodsType> getGoodsType() {
		List<GoodsType> find = (List<GoodsType>) hibernateTemplate.find("from GoodsType");
		return find;
	}

}
