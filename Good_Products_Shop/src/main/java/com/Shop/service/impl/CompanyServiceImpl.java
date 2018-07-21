package com.Shop.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Shop.dao.ICompanyDao;
import com.Shop.entity.Company;
import com.Shop.service.ICompanyService;

@Service
public class CompanyServiceImpl implements ICompanyService{

	@Autowired
	private ICompanyDao companyDao;
	
	@Override
	public List<Company> getCompanyService(String hql) {
		return companyDao.getCompanyDao(hql);
	}
	@Override
	public List<Company> getCompanyService(String hql, Object... values) {
		return companyDao.getCompanyDao(hql,values);
	}
	@Override
	public boolean saveCompanyService(Company company) {
		return companyDao.saveCompanyDao(company)>0;
	}
	@Override
	public boolean deleteCompanyService(int id) {
		return companyDao.deleteCompanyDao(id)>0;
	}
	@Override
	public boolean deleteCompanyService(String hql) {
		return companyDao.deleteCompanyDao(hql)>0;
	}
	@Override
	public boolean updateCompanyService(String hql, int id) {
		return companyDao.updateCompanyDao(hql, id)>0;
	}

}
