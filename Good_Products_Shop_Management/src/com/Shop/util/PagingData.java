package com.Shop.util;

import java.util.List;

public class PagingData {
	private List<?> listData;
	//总条数
	private int totalCount;
	//当前页
	private int currentPage;
	//页面大小
	private int pageSize;
	//上一页
	private int perPage;
	//下一页
	private int nextPage;
	//首页
	private int beginPage;
	//总页数（尾页）
	private int totalPage;
	
	public PagingData(List<?> listData, int totalCount, int currentPage, int pageSize) {
		this.listData=listData;
		this.totalCount = totalCount;
		this.currentPage = currentPage;
		this.pageSize = pageSize;
		//计算首页
		this.beginPage=1;
		//计算总页数（尾页）
		this.totalPage=this.totalCount%this.pageSize==0?this.totalCount/this.pageSize:this.totalCount/this.pageSize+1;
		//计算上一页
		this.perPage=this.currentPage-1>=1?this.currentPage-1:1;
		//计算下一页
		this.nextPage=this.currentPage+1<=this.totalPage?this.currentPage+1:this.totalPage;
	}
	public List<?> getListData() {
		return listData;
	}

	public int getTotalCount() {
		return totalCount;
	}

	public int getTotalPage() {
		return totalPage;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public int getPageSize() {
		return pageSize;
	}

	public int getPerPage() {
		return perPage;
	}

	public int getNextPage() {
		return nextPage;
	}

	public int getBeginPage() {
		return beginPage;
	}
	
	public void setListData(List<?> listData) {
		this.listData = listData;
	}

	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public void setPerPage(int perPage) {
		this.perPage = perPage;
	}

	public void setNextPage(int nextPage) {
		this.nextPage = nextPage;
	}

	public void setBeginPage(int beginPage) {
		this.beginPage = beginPage;
	}
}
