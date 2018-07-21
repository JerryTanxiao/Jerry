package com.Shop.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import com.Shop.util.AdminView.DetailView;
import com.Shop.util.AdminView.View;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonView;



@Entity
@Table(name="t_admin")
public class Admin {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@JsonView(View.class)
	private int admin_id;
	@JsonView(View.class)
	private String admin_username;
	@JsonView(DetailView.class)
	private String admin_password;
	@JsonView(View.class)
	private String admin_level;
	@JsonView(View.class)
	private String admin_role;
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
	public String getAdmin_role() {
		return admin_role;
	}
	public void setAdmin_role(String admin_role) {
		this.admin_role = admin_role;
	}
	@Override
	public String toString() {
		return "Admin [admin_id=" + admin_id + ", admin_username=" + admin_username + ", admin_password="
				+ admin_password + ", admin_level=" + admin_level + ", admin_role=" + admin_role + "]";
	}
}
