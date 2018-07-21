package com.Shop.entity;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="t_company")
public class Company {
		@Id
		@GeneratedValue(strategy=GenerationType.IDENTITY)
		private int company_id;
		private String company_name;
		private String company_place;
		private String company_address;
		private String company_postalcode;
		private String company_phone;
		private String company_fax;
		private String company_weChat;
		private String company_publicNum;
		private String company_email;
		private String company_bus;
		private String company_culture;
		private String company_about;
		private String company_image;
		private String company_map;
		public int getCompany_id() {
			return company_id;
		}
		public String getCompany_name() {
			return company_name;
		}
		public String getCompany_place() {
			return company_place;
		}
		public String getCompany_address() {
			return company_address;
		}
		public String getCompany_postalcode() {
			return company_postalcode;
		}
		public String getCompany_phone() {
			return company_phone;
		}
		public String getCompany_fax() {
			return company_fax;
		}
		public String getCompany_weChat() {
			return company_weChat;
		}
		public String getCompany_email() {
			return company_email;
		}
		public String getCompany_bus() {
			return company_bus;
		}
		public String getCompany_culture() {
			return company_culture;
		}
		public String getCompany_about() {
			return company_about;
		}
		public String getCompany_image() {
			return company_image;
		}
		public String getCompany_map() {
			return company_map;
		}
		
		public String getCompany_publicNum() {
			return company_publicNum;
		}
		public void setCompany_publicNum(String company_publicNum) {
			this.company_publicNum = company_publicNum;
		}
		public void setCompany_id(int company_id) {
			this.company_id = company_id;
		}
		public void setCompany_name(String company_name) {
			this.company_name = company_name;
		}
		public void setCompany_place(String company_place) {
			this.company_place = company_place;
		}
		public void setCompany_address(String company_address) {
			this.company_address = company_address;
		}
		public void setCompany_postalcode(String company_postalcode) {
			this.company_postalcode = company_postalcode;
		}
		public void setCompany_phone(String company_phone) {
			this.company_phone = company_phone;
		}
		public void setCompany_fax(String company_fax) {
			this.company_fax = company_fax;
		}
		public void setCompany_weChat(String company_weChat) {
			this.company_weChat = company_weChat;
		}
		public void setCompany_email(String company_email) {
			this.company_email = company_email;
		}
		public void setCompany_bus(String company_bus) {
			this.company_bus = company_bus;
		}
		public void setCompany_culture(String company_culture) {
			this.company_culture = company_culture;
		}
		public void setCompany_about(String company_about) {
			this.company_about = company_about;
		}
		public void setCompany_image(String company_image) {
			this.company_image = company_image;
		}
		public void setCompany_map(String company_map) {
			this.company_map = company_map;
		}
		
}
