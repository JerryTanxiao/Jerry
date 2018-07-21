package com.Shop.util;
import java.util.List;
import org.springframework.stereotype.Component;
@Component
public class PageResult {
	//结果集数据
	@SuppressWarnings("rawtypes")
	private List listData;
	//总条数
	private int totalcount;
	//当前页
	private int currentPage;
	//总页数
	private int totalPage;
	//上一页
	private int perpage;
	//下一页
	private int nextPage;
	//页面大小
	private int pagesize;
	//首页
	private int beginpage=1;
	
	public PageResult() {
	}
	
	@SuppressWarnings("rawtypes")
	public PageResult(List listData, int totalcount, int currentPage, int pagesize) {
		this.listData = listData;
		this.totalcount = totalcount;
		this.currentPage = currentPage;
		this.pagesize = pagesize;
		//计算的数据
		this.totalPage=this.totalcount%this.pagesize==0?
				this.totalcount/this.pagesize:this.totalcount/this.pagesize+1;
		this.perpage=this.currentPage-1>=1?this.currentPage-1:1;
		this.nextPage=this.currentPage+1<=this.totalPage?this.currentPage+1:this.totalPage;
	}

	@SuppressWarnings("rawtypes")
	public List getListData() {
		return listData;
	}

	public int getTotalcount() {
		return totalcount;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public int getTotalPage() {
		return totalPage;
	}

	public int getPerpage() {
		return perpage;
	}

	public int getNextPage() {
		return nextPage;
	}

	public int getPagesize() {
		return pagesize;
	}

	public int getBeginpage() {
		return beginpage;
	}

	@SuppressWarnings("rawtypes")
	public void setListData(List listData) {
		this.listData = listData;
	}

	public void setTotalcount(int totalcount) {
		this.totalcount = totalcount;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	public void setPerpage(int perpage) {
		this.perpage = perpage;
	}

	public void setNextPage(int nextPage) {
		this.nextPage = nextPage;
	}

	public void setPagesize(int pagesize) {
		this.pagesize = pagesize;
	}

	public void setBeginpage(int beginpage) {
		this.beginpage = beginpage;
	}

	@Override
	public String toString() {
		return "PageResult [listData=" + listData + ", totalcount=" + totalcount + ", currentPage=" + currentPage
				+ ", totalPage=" + totalPage + ", perpage=" + perpage + ", nextPage=" + nextPage + ", pagesize="
				+ pagesize + ", beginpage=" + beginpage + "]";
	}
}