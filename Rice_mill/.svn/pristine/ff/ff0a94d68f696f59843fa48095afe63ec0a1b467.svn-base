package com.Rice.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Rice.entity.Consumption;
import com.Rice.entity.Member;
import com.Rice.entity.Recharge;
import com.Rice.mapper.VIPMapper;
import com.Rice.service.IVIPService;

@Service
public class VIPServiceImpl implements IVIPService{
	@Autowired
	private VIPMapper vipMapper;
	@Override
	public Boolean updateMember(Member member) {
		return vipMapper.updateMember(member)>0;
	}
	@Override
	public List<Recharge> getAllRechargeByMemberId(String username) {
		return vipMapper.selectAllRechargeByMemberId(username);
	}
	@Override
	public List<Consumption> getAllConsumptionByMemberId(String username) {
		return vipMapper.selectAllConsumptionByMemberId(username);
	}

}
