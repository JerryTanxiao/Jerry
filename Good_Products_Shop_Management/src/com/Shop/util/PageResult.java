package com.Shop.util;
import java.util.List;
import org.springframework.stereotype.Component;
@Component
public class PageResult {
	//结果集数据
	@SuppressWarnings("rawtypes")
	private List listData;
	//总条数
	private int totalCount;
	//当前页
	private int currentPage;
	//总页数
	private int totalPage;
	//上一页
	private int perPage;
	//下一页
	private int nextPage;
	//页面大小
	private int pageSize;
	//首页
	private int beginPage=1;
	
	public PageResult() {
	}
	
	@SuppressWarnings("rawtypes")
	public PageResult(List listData, int totalcount, int currentPage, int pagesize) {
		this.listData = listData;
		this.totalCount = totalcount;
		this.currentPage = currentPage;
		this.pageSize = pagesize;
		//计算的数据
		this.totalPage=this.totalCount%this.pageSize==0?
				this.totalCount/this.pageSize:this.totalCount/this.pageSize+1;
		this.perPage=this.currentPage-1>=1?this.currentPage-1:1;
		this.nextPage=this.currentPage+1<=this.totalPage?this.currentPage+1:this.totalPage;
	}

	public List getListData() {
		return listData;
	}

	public int getTotalCount() {
		return totalCount;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public int getTotalPage() {
		return totalPage;
	}

	public int getPerPage() {
		return perPage;
	}

	public int getNextPage() {
		return nextPage;
	}

	public int getPageSize() {
		return pageSize;
	}

	public int getBeginPage() {
		return beginPage;
	}

	public void setListData(List listData) {
		this.listData = listData;
	}

	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	public void setPerPage(int perPage) {
		this.perPage = perPage;
	}

	public void setNextPage(int nextPage) {
		this.nextPage = nextPage;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public void setBeginPage(int beginPage) {
		this.beginPage = beginPage;
	}

	@Override
	public String toString() {
		return "PageResult [listData=" + listData + ", totalCount=" + totalCount + ", currentPage=" + currentPage
				+ ", totalPage=" + totalPage + ", perPage=" + perPage + ", nextPage=" + nextPage + ", pageSize="
				+ pageSize + ", beginPage=" + beginPage + "]";
	}
}