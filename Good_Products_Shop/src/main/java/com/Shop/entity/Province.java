package com.Shop.entity;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
@Entity
@Table(name="t_province")
public class Province {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private String province;
	@OneToMany(mappedBy="provinces")
	private Set<City> cities=new HashSet<City>();
	public int getId() {
		return id;
	}
	public String getProvince() {
		return province;
	}
	public void setId(int id) {
		this.id = id;
	}
	public void setProvince(String province) {
		this.province = province;
	}
	public Set<City> getCities() {
		return cities;
	}
	public void setCities(Set<City> cities) {
		this.cities = cities;
	}
	@Override
	public String toString() {
		return "Province [id=" + id + ", province=" + province + "]";
	}
	public Province(int id, String province) {
		this.id = id;
		this.province = province;
	}
	public Province() {
	}
	public Province(int id, String province, Set<City> cities) {
		this.id = id;
		this.province = province;
		this.cities = cities;
	}
	
}
