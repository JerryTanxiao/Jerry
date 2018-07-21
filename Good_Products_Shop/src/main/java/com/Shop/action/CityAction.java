package com.Shop.action;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.Shop.service.IAddressService;
import com.opensymphony.xwork2.ActionSupport;

@Controller
@Scope("prototype")
public class CityAction extends ActionSupport{
	private static final long serialVersionUID = 1L;
	@Autowired   
	private IAddressService service;
	private List<String> citys;
	private String province;
	
	@Override
	public String execute() throws Exception {
//		System.out.println(province);
		citys=service.getCityStr(province);
//		System.out.println("city:"+citys);
		return SUCCESS;
	}
	public List<String> getCitys() {
		return citys;
	}
	public void setCitys(List<String> citys) {
		this.citys = citys;
	}
	public String getProvince() {
		return province;
	}
	public void setProvince(String province) {
		this.province = province;
	}
	
}
