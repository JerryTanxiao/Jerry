package com.Shop.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.Shop.dao.IJobDao;
import com.Shop.entity.Company;
import com.Shop.entity.Jobs;

@Repository
public class JobDaoImpl implements IJobDao {
	@Autowired
	private SessionFactory sessionFactory;
	@Autowired
	private HibernateTemplate hibernateTemplate;

	@Override
	public int saveJob(Jobs jobs) {
		Session session = sessionFactory.getCurrentSession();
		session.save(jobs);
		return 0;

	}

	@Override
	public List<Jobs> getJob() {
		@SuppressWarnings("unchecked")
		List<Jobs> jobs1 = (List<Jobs>) hibernateTemplate.find("from Jobs where recruitid=?", 1);
		if (jobs1.isEmpty()) {
			return null;
		}
		return jobs1;
	}

	@Override
	public List<Company> getCompany() {
		@SuppressWarnings("unchecked")
		List<Company> company = (List<Company>) hibernateTemplate.find("from Company");
		if (company.isEmpty()) {
			return null;
		}
		return company;
	}

	@Override
	public List<String> getRecruit() {
		@SuppressWarnings("unchecked")
		List<String> recruit = hibernateTemplate.getSessionFactory().getCurrentSession()
				.createSQLQuery("select id from t_recruit where id=?").setParameter(0, 1).list();
		return recruit;
	}
}
