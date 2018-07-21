package com.Rice.service;

import com.Rice.entity.Member;
import com.Rice.entity.User;
public interface IUserService {
	public abstract User getLoginByUser(User user);
	public abstract Member getMemberByUser(User user);
	
	Integer insterUserReturnUserId(User user);
	public abstract Integer insterMemberReturnMemberId(Member member);
}
