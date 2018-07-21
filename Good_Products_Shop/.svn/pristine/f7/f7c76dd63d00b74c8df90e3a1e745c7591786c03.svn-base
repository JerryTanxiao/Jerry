package com.Shop.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Shop.dao.IJoinDao;
import com.Shop.entity.Join;
import com.Shop.service.IJoinService;
@Service
public class JoinServiceImpl implements IJoinService {
	@Autowired
	private IJoinDao joindao;
	@Override
	public List<Join> getJoinService(String sql) {
		
		return joindao.getJoin(sql);
	}
	@Override
	public int saveJoinService(Join join) {
	 return joindao.saveJoin(join);
	}

}
