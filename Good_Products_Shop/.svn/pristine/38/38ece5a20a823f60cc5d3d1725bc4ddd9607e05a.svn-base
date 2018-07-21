package com.Shop.action;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.Shop.service.IJoinPageService;
import com.Shop.util.PageResult;
import com.opensymphony.xwork2.ActionSupport;
@Controller
@Scope("prototype")
public class JoinAction extends ActionSupport {
	private static final long serialVersionUID = 8805867039375776850L;
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
	public int getCurrentPage() {
		return currentPage;
	}
	public void setPage(PageResult page) {
		this.page = page;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	
	
	
	
	
	
//	@Autowired
//	private IJoinService joinservice;
//	private List<Join> joinlist;
//	private Map<Integer, Join> map=new HashMap<Integer, Join>();
//	private boolean flage;
//	@Override
//	public String execute(){
//		try {
//			joinlist=joinservice.getJoinService("from Join");
////				System.out.println("字段长度："+joinlist.size());
//			//假分页
////			if(joinlist.size()>4){
////			for(int i=0;i<4;i++){
////				map.put(i+1, joinlist.get(i));
////				}
////			}
//				for(Join j:joinlist){
//					map.put(j.getId(),j);
//				}
//			flage=true;
//		} catch (Exception e) {
//			flage=false;
//		}
//		return SUCCESS;
//	}
}
