package com.Shop.action;

import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.Shop.entity.Company;
import com.Shop.entity.Jobs;
import com.Shop.service.ICompanyService;
import com.Shop.service.IJobService;
import com.Shop.service.IJoinPageService;
import com.opensymphony.xwork2.ActionSupport;

@Scope("prototype")
@Controller("JobAction")
public class JobAction extends ActionSupport {
	private static final long serialVersionUID = -4070306242648434488L;
	private List<Jobs> jobs = new ArrayList<Jobs>();
	private List<Company> company=new ArrayList<Company>();
	@Autowired
	private IJobService jobService;
	@Autowired
	private ICompanyService companyService;
/*	@Autowired
	private IJobService recruitService;*/
/*	@Autowired
	private IJoinPageService joinPageService;*/
	@Override
	public String execute() throws Exception {
		jobs = jobService.getJob();
//		recruit=recruitService.getRecruit();
		company=companyService.getCompanyService("from Company");
		return SUCCESS;
	}

	public List<Jobs> getJobs() {
		return jobs;
	}

	public void setJobs(List<Jobs> jobs) {
		this.jobs = jobs;
	}
	public List<Company> getCompany() {
		return company;
	}

	public void setCompany(List<Company> company) {
		this.company = company;
	}
}
