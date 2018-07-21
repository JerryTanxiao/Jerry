package com.Shop.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import com.fasterxml.jackson.annotation.JsonFormat;

@Entity
@Table(name="t_adminlog")
public class AdminLog {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private String admin;
	@JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone="GMT+8")
	private Date date;
	private String ip;
	private String type;
	@Column(length=2048)
	private String operation;
	private String remark;
	public int getId() {
		return id;
	}
	public String getAdmin() {
		return admin;
	}
	public String getType() {
		return type;
	}
	public String getOperation() {
		return operation;
	}
	public Date getDate() {
		return date;
	}
	public String getIp() {
		return ip;
	}
	public String getRemark() {
		return remark;
	}
	public void setId(int id) {
		this.id = id;
	}
	public void setAdmin(String admin) {
		this.admin = admin;
	}
	public void setType(String type) {
		this.type = type;
	}
	public void setOperation(String operation) {
		this.operation = operation;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public void setIp(String ip) {
		this.ip = ip;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	@Override
	public String toString() {
		return "AdminLog [id=" + id + ", admin=" + admin + ", type=" + type + ", operation=" + operation + ", date="
				+ date + ", ip=" + ip + ", remark=" + remark + "]";
	}
	
	
}
