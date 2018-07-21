package com.Shop.action;

import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.Shop.entity.Company;
import com.Shop.entity.CompanyHistory;
import com.Shop.entity.GoodsType;
import com.Shop.service.ICompanyService;
import com.Shop.service.IGoodsService;
import com.Shop.service.IHistoryService;
import com.opensymphony.xwork2.ActionSupport;

@Controller
@Scope("prototype")
public class HomePageAction extends ActionSupport{
	private static final long serialVersionUID = 1L;
	@Autowired
	private IHistoryService hService;
	@Autowired
	private IGoodsService gService;
	private List<CompanyHistory> cph;
	private List lists=new ArrayList();
	@Override
	public String execute() throws Exception {  
		cph=hService.getHistoryService();
		List<GoodsType> g=gService.getGoodsType();
		for(GoodsType gg:g){
			lists.add(gg.getId());
			lists.add(gg.getName());
			lists.add(gg.getImage());
		}
//		System.out.println(lists);
		return super.execute();
	}

	public List getLists() {
		return lists;
	}

	public void setLists(List lists) {
		this.lists = lists;
	}
	public List<CompanyHistory> getCph() {
		return cph;
	}
	public void setCph(List<CompanyHistory> cph) {
		this.cph = cph;
	}
}
