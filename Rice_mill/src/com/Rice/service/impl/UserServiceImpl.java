package com.Rice.service.impl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Rice.entity.Member;
import com.Rice.entity.User;
import com.Rice.mapper.UserMapper;
import com.Rice.service.IUserService;
@Service
public class UserServiceImpl implements IUserService {
	@Autowired
	UserMapper userMapper;
	@Override
	public User getLoginByUser(User user) {
		return userMapper.selectLoginByUser(user);
	}
	
	@Override
	public Integer insterUserReturnUserId(User user) {
		Integer i = userMapper.insertUsers(user);
		System.out.println(user);
		return i;
	}

	@Override
	public Integer insterMemberReturnMemberId(Member member) {
		return userMapper.insertMemberToUser(member);
	}

	@Override
	public Member getMemberByUser(User user) {
		return userMapper.selectMemberByUser(user);
	}
}
