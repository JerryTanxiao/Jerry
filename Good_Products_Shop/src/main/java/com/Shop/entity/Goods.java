package com.Shop.entity;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="t_goods")
public class Goods {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private String goodsname;
	private String goodsimage;
	private String goodsprice;
	private String goodstime;
	private int goodsnumbersales;
	@ManyToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="goodstypeid")
	private GoodsType goodsType;
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
	public GoodsType getGoodsType() {
		return goodsType;
	} 
	public void setGoodsType(GoodsType goodsType) {
		this.goodsType = goodsType;
	}
	@Override
	public String toString() {
		return "Goods [id=" + id + ", goodsname=" + goodsname + ", goodsimage=" + goodsimage + ", goodsprice="
				+ goodsprice + ", goodstime=" + goodstime + ", goodsnumbersales=" + goodsnumbersales + ", goodsType="
				+ goodsType + "]";
	}
}
