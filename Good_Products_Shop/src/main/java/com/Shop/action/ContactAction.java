package com.Shop.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.Shop.entity.Company;
import com.Shop.service.ICompanyService;
import com.opensymphony.xwork2.ActionSupport;

@Controller
@Scope("prototype")
public class ContactAction extends ActionSupport{
	private static final long serialVersionUID = 1L;
	@Autowired
	private ICompanyService service;
	private Company company;
	@Override
	public String execute() throws Exception {
//		String hql="from Company";
//		company = service.getCompanyService(hql).get(0);
		String hql="from Company where company_id=?";
		company = service.getCompanyService(hql,1).get(0);
		return super.execute();
	}
	public Company getCompany() {
		return company;
	}
	public void setCompany(Company company) {
		this.company = company;
	}
}
