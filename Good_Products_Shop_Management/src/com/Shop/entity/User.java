package com.Shop.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonFormat;

@Entity
@Table(name="t_user")
public class User {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private String username;
	@JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone="GMT+8")
	private Date createTime;
	@JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone="GMT+8")
	private Date lastLoginTime;
	private String mobile;
	private String email;
	@Column(columnDefinition="bit default 0",nullable=false)
	private int del;
	public int getId() {
		return id;
	}
	public String getUsername() {
		return username;
	}
	public Date getCreateTime() {
		return createTime;
	}
	public Date getLastLoginTime() {
		return lastLoginTime;
	}
	public int getDel() {
		return del;
	}
	public String getMobile() {
		return mobile;
	}
	public String getEmail() {
		return email;
	}
	public void setId(int id) {
		this.id = id;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	public void setLastLoginTime(Date lastLoginTime) {
		this.lastLoginTime = lastLoginTime;
	}
	public void setDel(int del) {
		this.del = del;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	@Override
	public String toString() {
		return "User [id=" + id + ", username=" + username + ", createTime=" + createTime + ", lastLoginTime="
				+ lastLoginTime + ", mobile=" + mobile + ", email=" + email + ", del=" + del + "]";
	}	
	
}
