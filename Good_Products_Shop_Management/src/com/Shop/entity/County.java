package com.Shop.entity;
import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
@Entity
@Table(name="t_county")
public class County {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private String county;
	@ManyToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="citiesid")
	private City citys;
	private String shoplocationimage;
	public int getId() {
		return id;
	}
	public String getCounty() {
		return county;
	}
	public void setId(int id) {
		this.id = id;
	}
	public void setCounty(String county) {
		this.county = county;
	}
	public City getCitys() {
		return citys;
	}
	public void setCitys(City citys) {
		this.citys = citys;
	}
	public String getShoplocationimage() {
		return shoplocationimage;
	}
	public void setShoplocationimage(String shoplocationimage) {
		this.shoplocationimage = shoplocationimage;
	}
	
}
