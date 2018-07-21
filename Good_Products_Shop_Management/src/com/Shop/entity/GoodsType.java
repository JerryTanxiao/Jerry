package com.Shop.entity;
import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
@Entity
@Table(name="t_goodstype")
public class GoodsType implements Serializable {
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="gid")
	private int id;
	private String name;
	private String image;
	@OneToMany(mappedBy="goodsType",fetch=FetchType.EAGER)
	private Set<Goods> goods=new HashSet<Goods>();
	public int getId() {
		return id;
	}
	public String getName() {
		return name;
	}
	public String getImage() {
		return image;
	}
	public Set<Goods> getGoods() {
		return goods;
	}
	public void setId(int id) {
		this.id = id;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public void setGoods(Set<Goods> goods) {
		this.goods = goods;
	}
	@Override
	public String toString() {
		return "GoodsType [id=" + id + ", name=" + name + ", image=" + image + "]";
	}
}
