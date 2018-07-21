package com.Shop.action;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.Shop.entity.Company;
import com.Shop.entity.Shop;
import com.Shop.service.ICompanyService;
import com.Shop.service.IShopService;
import com.opensymphony.xwork2.ActionSupport;

@Scope("prototype")
@Controller("ShopAction")
public class ShopAction extends ActionSupport {
	private static final long serialVersionUID = 7822782261746068848L;
	private List<Shop> shop = new ArrayList<Shop>();
	private Company company;
	@Autowired
	private IShopService shopservice;
	@Autowired
	private ICompanyService companyservice;

	@Override
	public String execute() throws Exception {
		System.out.println("获取前");
		shop = shopservice.getShop();
		company = companyservice.getCompanyService("from Company where company_id=?", 1).get(0);
		// shop1=shop.get(0).getShopname().substring(0, 4);
		// shop2=shop.get(0).getShopname().substring(5);
		// shop1=shop.get(0).getShopname().substring(0, 4);
		// shop1=shop.get(0).getShopname();
		System.out.println("获取后");
		return SUCCESS;
	}

	public List<Shop> getShop() {
		return shop;
	}

	public void setShop(List<Shop> shop) {
		this.shop = shop;
	}

	public Company getCompany() {
		return company;
	}

	public void setCompany(Company company) {
		this.company = company;
	}
}
