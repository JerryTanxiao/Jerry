package com.company.test;

import org.junit.Test;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.Shop.entity.Company;
import com.Shop.service.ICompanyService;

public class CompanyTest {
	
	@Test
	public void saveCompany(){//存储数据
		ClassPathXmlApplicationContext context =new ClassPathXmlApplicationContext("applicationContext.xml");
		ICompanyService service=(ICompanyService) context.getBean("companyServiceImpl");
		Company c=new Company();
		c.setCompany_about("1231");
		c.setCompany_address("dasdas");
		c.setCompany_bus("fdsfs");
		c.setCompany_culture("dsadas");
		c.setCompany_email("fdfdsf");
		c.setCompany_fax("1231231");
		c.setCompany_image("rfssdf");
		c.setCompany_map("fdsfsdfsd");
		c.setCompany_name("sssss");
		c.setCompany_phone("frsfrwesrfw32");
		c.setCompany_place("56ytry");
		c.setCompany_postalcode("fsdfsx");
		c.setCompany_publicNum("gfgf");
		c.setCompany_weChat("fdfff");
		service.saveCompanyService(c);
		context.close();
	}
	
	@Test
	public void deleteCompany(){//删除数据
		ClassPathXmlApplicationContext context =new ClassPathXmlApplicationContext("applicationContext.xml");
		ICompanyService service=(ICompanyService) context.getBean("companyServiceImpl");
		boolean b=service.deleteCompanyService("delete Company where company_id=5");
		boolean bb=service.deleteCompanyService(4);
		System.out.println(b);
		System.out.println(bb);
		context.close();
	}
	
	@Test
	public void updateCompany(){//修改数据
		ClassPathXmlApplicationContext context =new ClassPathXmlApplicationContext("applicationContext.xml");
		ICompanyService service=(ICompanyService) context.getBean("companyServiceImpl");
		boolean b=service.updateCompanyService("update Company set company_email='19933200000@qq.com' where company_id=?",6);
		System.out.println(b);
		context.close();
	}
}
