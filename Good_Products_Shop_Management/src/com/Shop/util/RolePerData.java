package com.Shop.util;

import java.util.HashSet;
import java.util.Set;

public class RolePerData {
	private String rolename;
	private Set<String> percodes=new HashSet<String>();
	public String getRolename() {
		return rolename;
	}
	public Set<String> getPercodes() {
		return percodes;
	}
	public void setRolename(String rolename) {
		this.rolename = rolename;
	}
	public void setPercodes(Set<String> percodes) {
		this.percodes = percodes;
	}
	@Override
	public String toString() {
		return "RolePerData [rolename=" + rolename + ", percodes=" + percodes + "]";
	}
	public RolePerData(String rolename, Set<String> percodes) {
		this.rolename = rolename;
		this.percodes = percodes;
	}
	
}
