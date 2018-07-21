package com.Shop.entity;

import java.io.Serializable;
public class GoodsVO implements Serializable {
	private static final long serialVersionUID = -8285564513843504272L;
	private int id;
	private String goodsname;
	private String goodsimage;
	private String goodsprice;
	private String goodstime;
	private int goodsnumbersales;
	private int gid;
	private String name;
	private String image; 
	public int getGid() {
		return gid;
	}
	public String getName() {
		return name;
	}
	public String getImage() {
		return image;
	}
	public void setGid(int gid) {
		this.gid = gid;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public int getId() {
		return id;
	}
	public String getGoodsname() {
		return goodsname;
	}
	public String getGoodsimage() {
		return goodsimage;
	}
	public String getGoodsprice() {
		return goodsprice;
	}
	public String getGoodstime() {
		return goodstime;
	}
	public int getGoodsnumbersales() {
		return goodsnumbersales;
	}
	public void setId(int id) {
		this.id = id;
	}
	public void setGoodsname(String goodsname) {
		this.goodsname = goodsname;
	}
	public void setGoodsimage(String goodsimage) {
		this.goodsimage = goodsimage;
	}
	public void setGoodsprice(String goodsprice) {
		this.goodsprice = goodsprice;
	}
	public void setGoodstime(String goodstime) {
		this.goodstime = goodstime;
	}
	public void setGoodsnumbersales(int goodsnumbersales) {
		this.goodsnumbersales = goodsnumbersales;
	}
	@Override
	public String toString() {
		return "GoodsVO [id=" + id + ", goodsname=" + goodsname + ", goodsimage=" + goodsimage + ", goodsprice="
				+ goodsprice + ", goodstime=" + goodstime + ", goodsnumbersales=" + goodsnumbersales + ", gid=" + gid
				+ ", name=" + name + ", image=" + image + "]";
	}
}
