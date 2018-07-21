package com.goods.test;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.junit.Test;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.Shop.entity.Goods;
import com.Shop.entity.GoodsType;
import com.Shop.service.IGoodsService;

public class GoodsTest {
	
	public static void main(String[] args) {
		ClassPathXmlApplicationContext context =new ClassPathXmlApplicationContext("applicationContext.xml");
		IGoodsService service=(IGoodsService) context.getBean("goodsServiceImpl");
	
	}
	
	//存食物goods并外键关联，会把goodstype一起存进去
//	@Test
	public void testSave1(){
		ClassPathXmlApplicationContext context =new ClassPathXmlApplicationContext("applicationContext.xml");
		IGoodsService service=(IGoodsService) context.getBean("goodsServiceImpl");
		
		GoodsType goodstype=new GoodsType();
		goodstype.setName("坚果炒货");
		goodstype.setImage("pic_3.png");
		goodstype.setId(1);
		
		Goods goods=new Goods();
		goods.setGoodsname("夏威夷果");
		goods.setGoodsimage("pic_23.jpg");
		goods.setGoodsnumbersales(0);
		goods.setGoodsprice("66");
		goods.setGoodstime(new SimpleDateFormat("yyyy年MM月dd日 hh:mm:ss").format(new Date()));
		goods.setGoodsType(goodstype);
		
		boolean b=service.saveGoodsService(goods);
		if(b){
			System.out.println("插入成功！");
		}else{
			System.out.println("失败了！");
		}
		
		context.close();
	}
	
	//只存食物类型goodstype
//	@Test
	public void testSave2(){
		ClassPathXmlApplicationContext context =new ClassPathXmlApplicationContext("applicationContext.xml");
		IGoodsService service=(IGoodsService) context.getBean("goodsServiceImpl");
		
		GoodsType goodstype=new GoodsType();
		goodstype.setName("肉脯鱼干");
		goodstype.setImage("pic_4.png");
		boolean b=service.saveGoodsTypeService(goodstype);
		GoodsType goodstype1=new GoodsType();
		goodstype1.setName("果干果脯");
		goodstype1.setImage("pic_4.png");
		b=service.saveGoodsTypeService(goodstype1);
		GoodsType goodstype2=new GoodsType();
		goodstype2.setName("糕点糖果");
		goodstype2.setImage("pic_4.png");
		b=service.saveGoodsTypeService(goodstype2);
		GoodsType goodstype3=new GoodsType();
		goodstype3.setName("素食山珍");
		goodstype3.setImage("pic_4.png");
		b=service.saveGoodsTypeService(goodstype3);
		GoodsType goodstype4=new GoodsType();
		goodstype4.setName("花茶饮品");
		goodstype4.setImage("pic_4.png");
		b=service.saveGoodsTypeService(goodstype4);
		GoodsType goodstype5=new GoodsType();
		goodstype5.setName("进口食品");
		goodstype5.setImage("pic_4.png");
		b=service.saveGoodsTypeService(goodstype5);
		GoodsType goodstype6=new GoodsType();
		goodstype6.setName("精选礼盒");
		goodstype6.setImage("pic_4.png");
		b=service.saveGoodsTypeService(goodstype6);
		
		if(b){
			System.out.println("插入成功！");
		}else{
			System.out.println("失败了！");
		}
		context.close();	
	}
	
	//只存goods，根据id进行关联
	@Test
	public void testSave3(){
		ClassPathXmlApplicationContext context =new ClassPathXmlApplicationContext("applicationContext.xml");
		IGoodsService service=(IGoodsService) context.getBean("goodsServiceImpl");
		
		String img ="pic_26.jpg"; 
		int index=8;
		
		Goods goods=new Goods();
		goods.setGoodsname("坚果时代");
		goods.setGoodsimage(img);
		goods.setGoodsnumbersales(0);
		goods.setGoodsprice("100");
		goods.setGoodstime(new SimpleDateFormat("yyyy年MM月dd日 hh:mm:ss").format(new Date()));
		boolean b=service.saveGoodsService(goods,index);
		
		Goods goods1=new Goods();
		goods1.setGoodsname("礼遇");
		goods1.setGoodsimage(img);
		goods1.setGoodsnumbersales(0);
		goods1.setGoodsprice("100");
		goods1.setGoodstime(new SimpleDateFormat("yyyy年MM月dd日 hh:mm:ss").format(new Date()));
		b=service.saveGoodsService(goods1,index);
		
		Goods goods2=new Goods();
		goods2.setGoodsname("尝尝有赞");
		goods2.setGoodsimage(img);
		goods2.setGoodsnumbersales(0);
		goods2.setGoodsprice("100");
		goods2.setGoodstime(new SimpleDateFormat("yyyy年MM月dd日 hh:mm:ss").format(new Date()));
		b=service.saveGoodsService(goods2,index);
		
		Goods goods3=new Goods();
		goods3.setGoodsname("阖家欢");
		goods3.setGoodsimage(img);
		goods3.setGoodsnumbersales(0);
		goods3.setGoodsprice("100");
		goods3.setGoodstime(new SimpleDateFormat("yyyy年MM月dd日 hh:mm:ss").format(new Date()));
		b=service.saveGoodsService(goods3,index);
		
		Goods goods4=new Goods();
		goods4.setGoodsname("食食有爱");
		goods4.setGoodsimage(img);
		goods4.setGoodsnumbersales(0);
		goods4.setGoodsprice("100");
		goods4.setGoodstime(new SimpleDateFormat("yyyy年MM月dd日 hh:mm:ss").format(new Date()));
		b=service.saveGoodsService(goods4,index);
		
		Goods goods5=new Goods();
		goods5.setGoodsname("追剧零食陪伴盒");
		goods5.setGoodsimage(img);
		goods5.setGoodsnumbersales(0);
		goods5.setGoodsprice("100");
		goods5.setGoodstime(new SimpleDateFormat("yyyy年MM月dd日 hh:mm:ss").format(new Date()));
		b=service.saveGoodsService(goods5,index);
		
//		Goods goods6=new Goods();
//		goods6.setGoodsname("薄皮豆干");
//		goods6.setGoodsimage(img);
//		goods6.setGoodsnumbersales("0");
//		goods6.setGoodsprice("28");
//		goods6.setGoodstime(new SimpleDateFormat("yyyy年MM月dd日 hh:mm:ss").format(new Date()));
//		b=service.saveGoodsService(goods6,index);
		
		
		if(b){
			System.out.println("插入成功！");
		}else{
			System.out.println("失败了！");
		}
		context.close();
	}
}
