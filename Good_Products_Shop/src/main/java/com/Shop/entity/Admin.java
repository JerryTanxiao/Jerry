package com.Shop.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="t_admin")
public class Admin {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int admin_id;
	private String admin_username;
	private String admin_password;
	private String admin_level;
	public int getAdmin_id() {
		return admin_id;
	}
	public String getAdmin_username() {
		return admin_username;
	}
	public String getAdmin_password() {
		return admin_password;
	}
	public String getAdmin_level() {
		return admin_level;
	}
	public void setAdmin_id(int admin_id) {
		this.admin_id = admin_id;
	}
	public void setAdmin_username(String admin_username) {
		this.admin_username = admin_username;
	}
	public void setAdmin_password(String admin_password) {
		this.admin_password = admin_password;
	}
	public void setAdmin_level(String admin_level) {
		this.admin_level = admin_level;
	}
}
