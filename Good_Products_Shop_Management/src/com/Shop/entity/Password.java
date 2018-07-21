package com.Shop.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="t_password")
public class Password {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int pwdId;
	@OneToOne
	@JoinColumn(name="user_id")
	private User user_id;
	private String password;
	public String getPassword() {
		return password;
	}
	public User getUser_id() {
		return user_id;
	}
	public void setUser_id(User user_id) {
		this.user_id = user_id;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getPwdId() {
		return pwdId;
	}
	public void setPwdId(int pwdId) {
		this.pwdId = pwdId;
	}
	@Override
	public String toString() {
		return "Password [pwdId=" + pwdId + ", user_id=" + user_id + ", password=" + password + "]";
	}
	
}
