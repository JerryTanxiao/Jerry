package com.Shop.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="t_join")
public class Join {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private String jointheme;
	private String joincontent;
	private String jointime;
	private String joinimage;
	public int getId() {
		return id;
	}
	public String getJointheme() {
		return jointheme;
	}
	public String getJoincontent() {
		return joincontent;
	}
	public String getJointime() {
		return jointime;
	}
	public String getJoinimage() {
		return joinimage;
	}
	public void setId(int id) {
		this.id = id;
	}
	public void setJointheme(String jointheme) {
		this.jointheme = jointheme;
	}
	public void setJoincontent(String joincontent) {
		this.joincontent = joincontent;
	}
	public void setJointime(String jointime) {
		this.jointime = jointime;
	}
	public void setJoinimage(String joinimage) {
		this.joinimage = joinimage;
	}
	@Override
	public String toString() {
		return "Join [id=" + id + ", jointheme=" + jointheme + ", joincontent=" + joincontent + ", jointime=" + jointime
				+ ", joinimage=" + joinimage + "]";
	}
}
