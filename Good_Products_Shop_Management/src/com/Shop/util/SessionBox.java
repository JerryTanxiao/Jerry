package com.Shop.util;

import com.Shop.entity.Admin;

public class SessionBox {
	private static Admin admin;
	public static Admin getSessionAdmin(){
		return SessionBox.admin;
	}
	public static void setSessionAdmin(Admin admin){
		SessionBox.admin=admin;
	}
}
