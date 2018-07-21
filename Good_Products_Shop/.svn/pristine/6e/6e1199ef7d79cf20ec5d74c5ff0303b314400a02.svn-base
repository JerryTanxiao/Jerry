package com.Shop.entity;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="t_shop")
public class Shop {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private String shopname;
	private String shophistory;
	private String shopimage;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getShopname() {
		return shopname;
	}
	public void setShopname(String shopname) {
		this.shopname = shopname;
	}
	public String getShophistory() {
		return shophistory;
	}
	public void setShophistory(String shophistory) {
		this.shophistory = shophistory;
	}
	public String getShopimage() {
		return shopimage;
	}
	public void setShopimage(String shopimage) {
		this.shopimage = shopimage;
	}
	public String getShoplocation() {
		return shoplocation;
	}
	public void setShoplocation(String shoplocation) {
		this.shoplocation = shoplocation;
	}
	private String shoplocation;
	@Override
	public String toString() {
		return "Shop [id=" + id + ", shopname=" + shopname + ", shophistory=" + shophistory + ", shopimage=" + shopimage
				+ ", shoplocation=" + shoplocation + "]";
	}
	
}
