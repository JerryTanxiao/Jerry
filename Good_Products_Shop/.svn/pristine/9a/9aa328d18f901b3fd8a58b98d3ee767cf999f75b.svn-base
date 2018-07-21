package com.address.test;

import org.junit.Test;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.Shop.entity.City;
import com.Shop.entity.County;
import com.Shop.entity.Province;
import com.Shop.service.IAddressService;

public class AddressTest {
	
	@Test
	public void testSave(){
		ClassPathXmlApplicationContext context =new ClassPathXmlApplicationContext("applicationContext.xml");
		IAddressService service = (IAddressService) context.getBean("addressServiceImpl");
		
		Province province =new Province();
		City city=new City();
		County county=new County();
//		County county1=new County();
//		County county2=new County();
//		County county3=new County();
//		County county4=new County();
			
		province.setProvince("广东省");
		province.setId(3);
		
		city.setCity("湛江市");
		city.setProvinces(province);
		city.setId(10);
		
		county.setCounty("赤坎区");
		county.setShoplocationimage("####");
		county.setCitys(city);
//		county1.setCounty("麻章区");
//		county1.setShoplocationimage("####");
//		county1.setCitys(city);
//		county2.setCounty("徐闻区");
//		county2.setShoplocationimage("####");
//		county2.setCitys(city);
//		county3.setCounty("霞山区");
//		county3.setShoplocationimage("####");
//		county3.setCitys(city);
//		county4.setCounty("遂溪区");
//		county4.setShoplocationimage("####");
//		county4.setCitys(city);
		
		boolean b= service.saveAddress(county);
//		boolean b=service.saveAddress(county1);
//		b=service.saveAddress(county2);
//		b=service.saveAddress(county3);
//		b=service.saveAddress(county4);
		if(b){
			System.out.println("插入成功！");
		}else{
			System.out.println("失败了！");
		}
		
		context.close();
	}
}
