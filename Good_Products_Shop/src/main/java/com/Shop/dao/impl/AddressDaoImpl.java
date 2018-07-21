package com.Shop.dao.impl;

import java.util.List;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.Shop.dao.IAddressDao;
import com.Shop.entity.County;
import com.Shop.entity.Province;
@Repository
public class AddressDaoImpl implements IAddressDao{
	@Autowired
	private HibernateTemplate hibernateTemplate;
	@Autowired
	private SessionFactory factory;
	@Override
	public int saveAddress(County county) {
		int i = (int) hibernateTemplate.save(county);
		return i;
	}
	@SuppressWarnings("unchecked")
	@Override
	public List<Province> getProvince(String hql) {
		return (List<Province>) hibernateTemplate.find(hql);
	}
	@Override
	public List<String> getProvinceStr(){
		List<String> provinces = hibernateTemplate.getSessionFactory().getCurrentSession()
		.createSQLQuery("select province from t_province").list();
//		System.out.println("dao:"+provinces);
		return provinces;
	}
	@Override
	public List<String> getCityStr(String str) {
		int id = (int) hibernateTemplate.getSessionFactory().getCurrentSession().createSQLQuery("select id from t_province where province=?").setParameter(0, str).list().get(0);
		List<String> strs=hibernateTemplate.getSessionFactory().getCurrentSession().createSQLQuery("select city from t_city where provincesid=:id").setParameter("id", id).list();
		return strs;
	}
	@Override
	public List<String> getCountyStr(String str) {
		int id = (int) hibernateTemplate.getSessionFactory().getCurrentSession().createSQLQuery("select id from t_city where city=?").setParameter(0, str).list().get(0);
		List<String> strs=hibernateTemplate.getSessionFactory().getCurrentSession().createSQLQuery("select county from t_county where citiesid=:id").setParameter("id", id).list();
		return strs;
	}
}
