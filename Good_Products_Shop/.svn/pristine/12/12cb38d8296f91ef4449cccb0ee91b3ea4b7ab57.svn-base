package com.Shop.action;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.Shop.service.IAddressService;
import com.opensymphony.xwork2.ActionSupport;

@Controller
@Scope("prototype")
public class CountyAction extends ActionSupport{
	private static final long serialVersionUID = 1L;
	@Autowired
	private IAddressService service;
	private List<String> countys;
	private String city;
	
	@Override
	public String execute() throws Exception {
//		System.out.println(city);
		countys=service.getCountyStr(city);
//		System.out.println("city:"+countys);
		return SUCCESS;
	}
	public List<String> getCountys() {
		return countys;
	}
	public String getCity() {
		return city;
	}
	public void setCountys(List<String> countys) {
		this.countys = countys;
	}
	public void setCity(String city) {
		this.city = city;
	}
}
