package com.Shop.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.Shop.dao.IHistoryDao;
import com.Shop.entity.CompanyHistory;

@Repository
public class HistoryDaoImpl implements IHistoryDao{
	@Autowired
	private HibernateTemplate template;
	@Override
	public int saveHistoryDao(CompanyHistory history) {
		int i=(int) template.save(history);
		return i;
	}

	@Override
	public List<CompanyHistory> getHistoryDao() {
		List<CompanyHistory> history= (List<CompanyHistory>) template.find("from CompanyHistory");
		return history;
	}

	@Override
	public List<CompanyHistory> getHistoryDao(int id) {
		List<CompanyHistory> history= (List<CompanyHistory>) template.find("from CompanyHistory where id=?",id);
		return history;
	}
}
