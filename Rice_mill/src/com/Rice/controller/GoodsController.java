package com.Rice.controller;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import com.Rice.entity.Diet;
import com.Rice.entity.Goods;
import com.Rice.service.IDietService;
import com.Rice.service.IGoodsService;
import com.Rice.util.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
@Controller
public class GoodsController {
	@Autowired
	IGoodsService goodsService;
	@Autowired
	IDietService dietService;
	@RequestMapping("index.do")
	public String index(HttpServletRequest request){
		List<Goods> goods=null;
		goods=goodsService.getGoodsbydiscountsname();
		request.setAttribute("goods", goods);
		return "index";
	}
	
	@RequestMapping("diet.do")
	public ModelAndView diet(String diettheme) {
		Diet d=dietService.getDietByDiettheme(diettheme);
		ModelAndView mvc=new ModelAndView("ys2");//自动拼接
		mvc.addObject("diet", d);
		return mvc;
	}
	/**
	 * 原始分页
	 * @param request
	 * @return
	 */
	@RequestMapping("cp.do")
	public ModelAndView cp(HttpServletRequest request){
		//获取当前页数
        String pageNow=request.getParameter("pageNow");
        //获取总页数
        int totalCount=(int)goodsService.findNewCont();
        Page page=null;
        List<Goods> list=new ArrayList<Goods>();
        if (pageNow!=null) {
            page=new Page(Integer.parseInt(pageNow), totalCount);
            list=goodsService.findNewsPage(page.getStartPos(),page.getPageSize());
        }else {
            page=new Page(1, totalCount);
            list=goodsService.findNewsPage(page.getStartPos(),page.getPageSize());
        }
		ModelAndView mvc=new ModelAndView("cp");//自动拼接
		mvc.addObject("list", list);
	    mvc.addObject("page", page);
		return mvc;
	}
	
	
	
	@RequestMapping("cpsoup.do")
	public ModelAndView  cpsoup(@RequestParam(name="goodstype") String goodstype,@RequestParam(name="pageNum",defaultValue="1")Integer pageNum,ModelAndView mvc){
		System.out.println("goodstype: " + goodstype);
		PageHelper.startPage(pageNum, 6);
		List<Goods> good =null;
		if(goodstype.equalsIgnoreCase("今日食谱")){
			good=goodsService.getGoodsByGoodsDate();
		}else if(goodstype.equalsIgnoreCase("新菜上架")){
			good=goodsService.getGoodsByGoodsDate();
		}else if(goodstype.equalsIgnoreCase("每日优惠")){
			good=goodsService.getGoodsbydiscountsname();
		}else {
			good=goodsService.getGoodsByGoodsType(goodstype);
		}
		PageInfo<Goods> goods=new PageInfo<Goods>(good.subList(0, good.size()));
		System.out.println("good : " + goods);
		mvc.setViewName("cpsoup");
		mvc.addObject("goods", goods);
		return mvc;
	}
}
