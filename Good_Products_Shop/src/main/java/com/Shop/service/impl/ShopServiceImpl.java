package com.Shop.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Shop.dao.IShopDao;
import com.Shop.entity.Shop;
import com.Shop.service.IShopService;
@Service
public class ShopServiceImpl implements IShopService{
	@Autowired
	private IShopDao shopDao;
	@Override
	public boolean saveShop(Shop shop) {
		int row=shopDao.saveShop(shop);
		return row>0;
	}

	@Override
	public List<Shop> getShop() {
		return shopDao.getShop();
	}

}
