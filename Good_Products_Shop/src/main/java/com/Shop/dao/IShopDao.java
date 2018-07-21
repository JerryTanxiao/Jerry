package com.Shop.dao;

import java.util.List;

import com.Shop.entity.Shop;

public interface IShopDao {
	public int saveShop(Shop shop);
	public List<Shop> getShop();
}
