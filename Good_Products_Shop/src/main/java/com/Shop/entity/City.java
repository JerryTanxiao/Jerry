package com.Shop.entity;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
@Entity
@Table(name="t_city")
public class City {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private String city;
	@ManyToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="provincesid")
	private Province provinces;
	@OneToMany(mappedBy="citys")
	private Set<County> counties=new HashSet<County>();
	public int getId() {
		return id;
	}
	public String getCity() {
		return city;
	}
	public void setId(int id) {
		this.id = id;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public Province getProvinces() {
		return provinces;
	}
	public void setProvinces(Province provinces) {
		this.provinces = provinces;
	}
	public Set<County> getCounties() {
		return counties;
	}
	public void setCounties(Set<County> counties) {
		this.counties = counties;
	}
	
}
