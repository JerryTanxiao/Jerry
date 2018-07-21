package com.Shop.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="t_roleandpermission")
public class RoleAndPermission {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int rap_id;
	@OneToOne
	@JoinColumn(name="role_id")
	private Role role_id;
	@OneToOne
	@JoinColumn(name="permission_id")
	private Permission permission_id;
	public int getRap_id() {
		return rap_id;
	}
	public void setRap_id(int rap_id) {
		this.rap_id = rap_id;
	}
	public Role getRole_id() {
		return role_id;
	}
	public Permission getPermission_id() {
		return permission_id;
	}
	public void setPermission_id(Permission permission_id) {
		this.permission_id = permission_id;
	}
	public void setRole_id(Role role_id) {
		this.role_id = role_id;
	}
	@Override
	public String toString() {
		return "RoleAndPermission [rap_id=" + rap_id + ", role_id=" + role_id + ", permission_id=" + permission_id
				+ "]";
	}
	
}
