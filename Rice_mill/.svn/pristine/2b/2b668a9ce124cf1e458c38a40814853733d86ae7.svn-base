package com.Rice.mapper;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.Rice.entity.Consumption;
import com.Rice.entity.Member;
import com.Rice.entity.Recharge;
@Mapper
public interface VIPMapper {
	public abstract Integer updateMember(Member member);
	public abstract List<Member> selectPageRecharge();
	public abstract List<Recharge> selectAllRechargeByMemberId(String username);
	public abstract List<Consumption> selectAllConsumptionByMemberId(String username);
	
}
