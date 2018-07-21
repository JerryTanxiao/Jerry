package com.Shop.entity;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "t_jobs")
public class Jobs {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "recruitid")
	private Recruit recruit;
	private String jobstheme;
	private String jobstime;
	private String daptinfo;
	private String jobsrequirements;
	private String jobslocation;
	private String jobsimage;
	private int number;

	public int getNumber() {
		return number;
	}

	public void setNumber(int number) {
		this.number = number;
	}

	public int getId() {
		return id;
	}

	public String getJobstheme() {
		return jobstheme;
	}

	public String getJobstime() {
		return jobstime;
	}

	public String getDaptinfo() {
		return daptinfo;
	}

	public String getJobsrequirements() {
		return jobsrequirements;
	}

	public String getJobslocation() {
		return jobslocation;
	}

	public String getJobsimage() {
		return jobsimage;
	}

	public void setId(int id) {
		this.id = id;
	}

	public void setJobstheme(String jobstheme) {
		this.jobstheme = jobstheme;
	}

	public void setJobstime(String jobstime) {
		this.jobstime = jobstime;
	}

	public void setDaptinfo(String daptinfo) {
		this.daptinfo = daptinfo;
	}

	public void setJobsrequirements(String jobsrequirements) {
		this.jobsrequirements = jobsrequirements;
	}

	public void setJobslocation(String jobslocation) {
		this.jobslocation = jobslocation;
	}

	public void setJobsimage(String jobsimage) {
		this.jobsimage = jobsimage;
	}

	public Recruit getRecruit() {
		return recruit;
	}

	public void setRecruit(Recruit recruit) {
		this.recruit = recruit;
	}

	@Override
	public String toString() {
		return "Jobs [id=" + id + ", jobstheme=" + jobstheme + ", jobstime=" + jobstime + ", daptinfo=" + daptinfo
				+ ", jobsrequirements=" + jobsrequirements + ", jobslocation=" + jobslocation + ", jobsimage="
				+ jobsimage + ", number=" + number + "]";
	}
}
