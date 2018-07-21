package com.Shop.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="t_role")
public class Role {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int roleId;
	private String roleName;
	private String roleDescribe;
	public int getRoleId() {
		return roleId;
	}
	
	public String getRoleName() {
		return roleName;
	}

	public String getRoleDescribe() {
		return roleDescribe;
	}

	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}

	public void setRoleDescribe(String roleDescribe) {
		this.roleDescribe = roleDescribe;
	}

	public void setRoleId(int roleId) {
		this.roleId = roleId;
	}

	@Override
	public String toString() {
		return "Role [roleId=" + roleId + ", roleName=" + roleName + ", roleDescribe=" + roleDescribe + "]";
	}
	
}
