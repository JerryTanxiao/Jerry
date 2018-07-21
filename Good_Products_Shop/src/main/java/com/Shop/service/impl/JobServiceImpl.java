package com.Shop.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Shop.dao.IJobDao;
import com.Shop.entity.Company;
import com.Shop.entity.Jobs;
import com.Shop.service.IJobService;

@Service
public class JobServiceImpl implements IJobService {
	@Autowired
	private IJobDao jobDao;
	@Autowired
	private IJobDao companyDao;
	@Autowired
	private IJobDao recruitDao;

	@Override
	public boolean saveJob(Jobs jobs) {
		int rows = jobDao.saveJob(jobs);
		return rows > 0;
	}

	@Override
	public List<Jobs> getJob() {
		return jobDao.getJob();
	}

	@Override
	public List<Company> getCompany() {
		return companyDao.getCompany();
	}

	@Override
	public List<String> getRecruit() {
		return recruitDao.getRecruit();
	}
}
