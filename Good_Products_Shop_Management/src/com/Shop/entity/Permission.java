package com.Shop.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="t_permission")
public class Permission {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int permissionId;
	private String permissionName;
	private String permissionDescribe;
	private String permissionCode;
	private String permissionSpace;
	public int getPermissionId() {
		return permissionId;
	}
	public void setPermissionId(int permissionId) {
		this.permissionId = permissionId;
	}
	public String getPermissionName() {
		return permissionName;
	}
	public String getPermissionDescribe() {
		return permissionDescribe;
	}
	public void setPermissionName(String permissionName) {
		this.permissionName = permissionName;
	}
	public void setPermissionDescribe(String permissionDescribe) {
		this.permissionDescribe = permissionDescribe;
	}
	@Override
	public String toString() {
		return "Permission [permissionId=" + permissionId + ", permissionName=" + permissionName
				+ ", permissionDescribe=" + permissionDescribe +"code:"+ permissionCode+ " space"+permissionSpace+"]";
	}
	public String getPermissionCode() {
		return permissionCode;
	}
	public void setPermissionCode(String permissionCode) {
		this.permissionCode = permissionCode;
	}
	public String getPermissionSpace() {
		return permissionSpace;
	}
	public void setPermissionSpace(String permissionSpace) {
		this.permissionSpace = permissionSpace;
	}
	
}
