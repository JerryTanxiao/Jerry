package com.Shop.action;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.Shop.service.IJoinPageService;
import com.Shop.util.PageResult;
import com.opensymphony.xwork2.ActionSupport;
@Controller
@Scope("prototype")
public class JoinPage extends ActionSupport {
	private static final long serialVersionUID = 8435077305439735053L;
	@Autowired
	private IJoinPageService joinPageService;
	private PageResult page;
	private int currentPage=1;
	@Override
	public String execute() throws Exception {
		int pageSize=4;
		page=joinPageService.getpage(getCurrentPage(), pageSize);
		System.out.println(page);
		return SUCCESS;
	}
	public PageResult getPage() {
		return page;
	}
	public void setPage(PageResult page) {
		this.page = page;
	}
	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
}
