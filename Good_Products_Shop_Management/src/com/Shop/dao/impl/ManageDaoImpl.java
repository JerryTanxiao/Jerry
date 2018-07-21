package com.Shop.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.Shop.dao.IManageDao;
import com.Shop.entity.AdminLog;

@Repository
public class ManageDaoImpl implements IManageDao{
	@Autowired
	private HibernateTemplate template;
	@Override
	public List<AdminLog> getLogDao() {
		return (List<AdminLog>) template.find("from AdminLog");
	}

}
