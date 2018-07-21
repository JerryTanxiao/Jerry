package com.Shop.dao;

import java.util.List;

import com.Shop.entity.Company;
import com.Shop.entity.Jobs;

public interface IJobDao {
	public int saveJob(Jobs jobs);
	public List<Jobs> getJob();
	public List<Company> getCompany();
	public List<String> getRecruit();
}
