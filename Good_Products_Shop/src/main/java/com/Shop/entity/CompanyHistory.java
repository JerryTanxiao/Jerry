package com.Shop.entity;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="t_companyhistory")
public class CompanyHistory {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private String historyname;
	private String historycontent;
	private String companyhistoryimage;
	public int getId() {
		return id;
	}
	public String getHistoryname() {
		return historyname;
	}
	public String getHistorycontent() {
		return historycontent;
	}
	public void setId(int id) {
		this.id = id;
	}
	public void setHistoryname(String historyname) {
		this.historyname = historyname;
	}
	public void setHistorycontent(String historycontent) {
		this.historycontent = historycontent;
	}
	public String getCompanyhistoryimage() {
		return companyhistoryimage;
	}
	public void setCompanyhistoryimage(String companyhistoryimage) {
		this.companyhistoryimage = companyhistoryimage;
	}
}
