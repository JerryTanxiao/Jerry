 package com.Shop.controller;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.Shop.entity.Goods;
import com.Shop.entity.GoodsVO;
import com.Shop.entity.Goodspage;
import com.Shop.service.IGoodsService;
import com.Shop.util.PageResult;
@Controller
@RequestMapping("/goods")
public class GoodsController {
		@Autowired
		private IGoodsService goodservice;
		private int pageSize=10;
		private PageResult page;
		@RequestMapping("/testpage.do")
		public String test(){
			return "forward:/WEB-INF/jsp/easyUIgoods.jsp";
		}
		@RequestMapping("/uploadpage.do")
		public String upload(){
			return "forward:/WEB-INF/jsp/upload.jsp";
		}
		@RequestMapping("/good.do")
		public String aa(HttpServletRequest request,@RequestParam(defaultValue="1")int currentPage){
			page = goodservice.getpagegoods(currentPage, pageSize);
			request.setAttribute("page", page);
			return "forward:/WEB-INF/jsp/goods.jsp";
		}
		@RequestMapping("/update.do")
		public String update(@RequestParam int id,HttpServletRequest request){
			System.out.println("id : " + id);
			List<Goods> goods = goodservice.getgoodsbyid(id);
			request.setAttribute("goods", goods);
			System.out.println(goods);
			return "forward:/WEB-INF/jsp/template.jsp";
		}
		@RequestMapping("/selectgoods.do")
		@ResponseBody
		public PageResult selectgoods(HttpServletRequest request,@RequestBody Goodspage goodspage) throws UnsupportedEncodingException{
			String type=goodspage.getType();
			System.out.println("type ..: "+type);
			String name=goodspage.getName();
			int currentPage=goodspage.getCurrentPage();
			page=goodservice.getpagegoodsvolike(currentPage,pageSize, name,type);
			if(page.getListData().size()<1){
				page=null;
			}
			System.out.println(page);
			return page;
		}
		
		
		
		
		@RequestMapping("/selecttest.do")
		@ResponseBody
		public List<GoodsVO> selecttest(@RequestParam(name="type",required=false) String type,@RequestParam(name="value",required=false) String value){
			System.out.println("type : " +type);
			System.out.println("value :" +value);
			List<GoodsVO> vos=goodservice.getListgoodsService(type, value);
			return vos;
			
		}
		
		@RequestMapping("/controllerGoods.do")
		@ResponseBody
		public boolean easyui(@RequestBody GoodsVO goods,@RequestParam(name="method") String method){
			System.out.println("method : "+ method);
			Boolean b=false;
			if(method.equalsIgnoreCase("editGoods")){
				b= goodservice.updateListGoods(goods);
			}else if(method.equalsIgnoreCase("newGoods")){
				b=goodservice.saveListGoods(goods);
			}else if(method.equalsIgnoreCase("removeGoods")){
				b=goodservice.deleteListGoods(goods.getId());
			}
			return b;
		}
		
		@RequestMapping("upload.do")
	    @ResponseBody
	    public String saveStampdefByForm(@RequestParam("imageupload") CommonsMultipartFile[]  files,HttpServletRequest request) throws Exception
	    {	
			String path = request.getServletContext().getRealPath("/images/");
			String filename =null;
			for(CommonsMultipartFile file : files){
				filename = file.getOriginalFilename();
				System.out.println(filename);
				String fullname = path + filename;
				System.out.println(fullname);
				//获取到上传文件的文件流
				InputStream is =  file.getInputStream();
				//fullname 指定文件路径 
				OutputStream os = new FileOutputStream(new File(fullname));
				//流操作的时候的缓存
				byte[] buffer = new byte[1024];
				//实际每一次流操作的时候的字节数
				int len = 0;
				while((len = is.read(buffer))!=-1){
					os.write(buffer, 0, len);
					os.flush();
				}
				os.close();
				is.close();
			}
			return filename;
		}
}