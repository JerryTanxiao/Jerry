package com.Shop.action;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.Shop.service.IGoodsService;
import com.Shop.service.IHistoryService;
import com.Shop.util.PageResult;
import com.opensymphony.xwork2.ActionSupport;
@Controller
@Scope("prototype")
public class GoodsAction extends ActionSupport{
	private static final long serialVersionUID = -8509032577453336861L;
	@Autowired
	private IGoodsService goodsService;
	@Autowired
	private IGoodsService gService;
	private PageResult page;
	//初始页面
	private int currentPage=1;
	//前端传过来的id
	private int id=1;
	private List<String> gts;
	@Autowired
	private IHistoryService hService;
	@Override
	public String execute() throws Exception {
		int pageSize=6;
		page=goodsService.getpage(currentPage, pageSize,getId());
//		gts=(gService.getAllGoodsTypeService());
		//System.out.println("========================="+page);
//		System.out.println(gts);
		return SUCCESS;
	}
	public PageResult getPage() {
		return page;
	}
	public int getCurrentPage() {
		return currentPage;
	}
	public void setPage(PageResult page) {
		this.page = page;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public List<String> getGts() {
		return gts;
	}
	public void setGts(List<String> gts) {
		this.gts = gts;
	}
}
