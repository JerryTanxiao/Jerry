package com.Shop.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="t_userandrole")
public class UserAndRole {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int uar_id;
	@OneToOne
	@JoinColumn(name="user_id")
	private User user_id;
	@OneToOne
	@JoinColumn(name="role_id")
	private Role role_id;
	public int getUar_id() {
		return uar_id;
	}
	public void setUar_id(int uar_id) {
		this.uar_id = uar_id;
	}
	public User getUser_id() {
		return user_id;
	}
	public void setUser_id(User user_id) {
		this.user_id = user_id;
	}
	public Role getRole_id() {
		return role_id;
	}
	public void setRole_id(Role role_id) {
		this.role_id = role_id;
	}
	@Override
	public String toString() {
		return "UserAndRole [uar_id=" + uar_id + ", user_id=" + user_id + ", role_id=" + role_id + "]";
	}
	
}
