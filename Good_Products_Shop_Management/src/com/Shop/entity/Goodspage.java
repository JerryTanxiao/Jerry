package com.Shop.entity;

public class Goodspage {
	private String name;
	private String type;
	private  int  currentPage;
	public String getName() {
		return name;
	}
	public int getCurrentPage() {
		return currentPage;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
}
