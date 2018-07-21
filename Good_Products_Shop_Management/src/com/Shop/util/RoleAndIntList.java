package com.Shop.util;

import java.util.ArrayList;
import java.util.List;

import com.Shop.entity.Role;

public class RoleAndIntList {
	private Role role;
	private int[] ids;
	public Role getRole() {
		return role;
	}
	public void setRole(Role role) {
		this.role = role;
	}
	public RoleAndIntList(Role role, int[] ids) {
		super();
		this.role = role;
		this.ids = ids;
	}
	public int[] getIds() {
		return ids;
	}
	public void setIds(int[] ids) {
		this.ids = ids;
	}
	@Override
	public String toString() {
		return "RoleAndIntList [role=" + role + ", ids=" + ids + "]";
	}
	
}
