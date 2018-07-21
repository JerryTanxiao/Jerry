package com.Shop.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Shop.dao.IAddressDao;
import com.Shop.entity.County;
import com.Shop.entity.Province;
import com.Shop.service.IAddressService;
@Service
public class AddressServiceImpl implements IAddressService{
	@Autowired
	private IAddressDao addressDao; 
	@Override
	public boolean saveAddress(County county) {
		boolean row=addressDao.saveAddress(county)>0;
		return row;
	}
	@Override
	public List<Province> getProvince(String hql) {
		return addressDao.getProvince(hql);
	}
	@Override
	public List<String> getProvinceStr() {
		return addressDao.getProvinceStr();
	}
	@Override
	public List<String> getCityStr(String str) {
		return addressDao.getCityStr(str);
	}
	@Override
	public List<String> getCountyStr(String str) {
		return addressDao.getCountyStr(str);
	}
	
}
