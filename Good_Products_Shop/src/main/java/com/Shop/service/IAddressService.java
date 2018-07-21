package com.Shop.service;

import java.util.List;

import com.Shop.entity.County;
import com.Shop.entity.Province;

public interface IAddressService {
	public abstract boolean saveAddress(County county);
	public abstract List<Province> getProvince(String hql);
	public abstract List<String> getProvinceStr();
	public abstract List<String> getCityStr(String str);
	public abstract List<String> getCountyStr(String str);
}
