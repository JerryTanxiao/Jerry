package com.Shop.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.Shop.dao.IShopDao;
import com.Shop.entity.Shop;

@Repository
public class ShopDaoImpl implements IShopDao {
	@Autowired
	private SessionFactory sessionFactory;
	@Autowired
	private HibernateTemplate hibernateTemplate;

	@Override
	public int saveShop(Shop shop) {
		Session session = sessionFactory.getCurrentSession();
		session.save(shop);
		return 0;
	}
	@Override
	public List<Shop> getShop() {
		@SuppressWarnings("unchecked")
		List<Shop> shops = (List<Shop>) hibernateTemplate.find("from Shop");
		if (shops.isEmpty()) {
			return null;
		}
		return shops;
	}
}
