package com.Shop.action;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.Shop.service.IAddressService;
import com.opensymphony.xwork2.ActionSupport;

@Controller
@Scope("prototype")
public class ProvinceAction extends ActionSupport{
	private static final long serialVersionUID = 1L;
	@Autowired
	private IAddressService service;
	private List<String> addresses;
	@Override
	public String execute() throws Exception {
		addresses = service.getProvinceStr();
//		System.out.println("action:"+addresses);
		return SUCCESS;
	}
	public List<String> getAddresses() {
		return addresses;
	}

	public void setAddresses(List<String> addresses) {
		this.addresses = addresses;
	}	
}
