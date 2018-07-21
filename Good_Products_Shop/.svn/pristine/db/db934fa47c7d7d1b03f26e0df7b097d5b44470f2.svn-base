package com.Shop.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.Shop.dao.ICompanyDao;
import com.Shop.entity.Company;

@Repository
public class CompanyDaoImpl implements ICompanyDao{
	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	@Override
	public List<Company> getCompanyDao(String hql,Object...values) {
		return (List<Company>) hibernateTemplate.find(hql,values);
	}
	@Override
	public List<Company> getCompanyDao(String hql){
		return (List<Company>) hibernateTemplate.find(hql);
	}
	@Override
	public int saveCompanyDao(Company company) {
		int i=(int) hibernateTemplate.save(company);
		return i;
	}
	@Override
	public int deleteCompanyDao(int id) {
		Company company= hibernateTemplate.get(Company.class, id);
		try {
			hibernateTemplate.delete(company);			
		} catch (Exception e) {
			return 0;
		}
		return 1;	
	}
	@Override
	public int deleteCompanyDao(String hql) {
		int i=hibernateTemplate.getSessionFactory().getCurrentSession().createQuery(hql).executeUpdate();
		System.out.println(i);
		return i;
	}
	@Override
	public int updateCompanyDao(String hql, int id) {
		int i=hibernateTemplate.getSessionFactory().getCurrentSession().createQuery(hql).setParameter(0, id).executeUpdate();
		return i;
	}

}
