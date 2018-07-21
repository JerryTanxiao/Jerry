<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>    
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>联系我们</title>
	<link rel="stylesheet" type="text/css" href="<%=basePath%>/css/cy.css">
</head>
<body>
	<div class="page_six">
		<div class="bck1">
			<div class="w1190">
				<img class="logo" src="<%=basePath%>/images/logo.jpg">
				<div id="inout"><a href="register.do">注册</a><a>&nbsp;|&nbsp;</a><a href="login.do">登录</a></div>
				<div class="w1190_fr">
					<span class="w1190_span1">定座电话 : 028-5876992</span>
					<div>
						<a href="###">
							<img src="<%=basePath%>/images/xx.jpg">
							<span>收藏我们</span>
						</a>
					</div>				
				</div>
			</div>
		</div>
		<!-- 导航栏 -->
		<div class="bck2">
			<div class="w900">
				<ul class="w900_ul1">
					<li><a href="index.do">网站首页</a></li>
					<li><a href="gy.do">关于我们</a></li>
					<li><a href="cp.do">菜品展示</a></li>
					<li><a href="ys.do">饮食资讯</a></li>
					<li><a href="###" style="background-color: #0D856A; color: #fff;">联系我们</a></li>
					<li><a href="fw.do">服务中心</a></li>
				</ul>
			</div>
		</div>	
		<!-- banner图 -->
		<div class="banner"></div>
		<!-- 类容 -->
		<div class="w1200" style="overflow:hidden;margin-bottom:125px;">
			<p style="margin:17px auto 70px;">您的位置 ：<a href="index.do" style="color: #333;">首页</a>&gt;<span style="color: #0D856A;">联系我们</span></p>
			<div class="six_div1">
				<div class="six_div1_div">
					<p class="six_div1_div_p1">
						<img src="<%=basePath%>/images/icon.png">
						<span class="six_div1_div_p1_span">联系电话</span>
					</p>
					<p class="six_div1_div_p2">
						<span>订座电话：028-5876922</span>
						<span class="six_div1_div_p2_span2">投诉电话：400-800-9090</span>
					</p>
				</div>
				<div class="six_div1_div">
					<p class="six_div1_div_p1">
						<img src="<%=basePath%>/images/icon2.png">
						<span class="six_div1_div_p1_span">地址</span>
					</p>
					<p class="six_div1_div_p2">
						<span>成都市锦江区牛市口266号食味坊</span>
					</p>
				</div>
				<div class="six_div1_div">
					<p class="six_div1_div_p1">
						<img src="<%=basePath%>/images/icon3.png">
						<span class="six_div1_div_p1_span">公司邮箱</span>
					</p>
					<p class="six_div1_div_p2">
						<span>shiweifang@163.com</span>
						<span class="six_div1_div_p2_span2">swmoo@163.com</span>
					</p>
				</div>
				<div class="six_div1_div">
					<p class="six_div1_div_p1">
						<img src="<%=basePath%>/images/icon4.png">
						<span class="six_div1_div_p1_span">乘车路线</span>
					</p>
					<p class="six_div1_div_p2">
						<span>1路，19路，77路，82路，100路，338路，501路，地铁1号线</span>
					</p>
				</div>												
			</div>
			<div class="six_div2">
				<!-- <img src="<%=basePath%>/images/six_c.jpg"> -->
				<iframe src="ditu.do" frameborder="0" style="height: 648px;width: 6714px;scrolling:no;"></iframe>
			</div>
		</div>
		<!-- 底部 -->
		<div class="end">
			<div class="w903">
				<div class="end_div1">
					<ul class="end_div1_ul1">
						<li class="end_div1_ul1_li"><a href="###">关于我们</a></li>
						<li><a href="###">公司简介</a></li>
						<li><a href="###">企业文化</a></li>
						<li><a href="###">厨师阵容</a></li>
					</ul>
					<ul class="end_div1_ul1">
						<li class="end_div1_ul1_li"><a href="###">菜品展示</a></li>
						<li><a href="###">大厨推荐</a></li>
						<li><a href="###">今日食谱</a></li>
						<li><a href="###">食材挑选</a></li>
					</ul>
					<img src="<%=basePath%>/images/btm_logo.jpg">		
					<ul class="end_div1_ul1" style="margin-left: 114px;">
						<li class="end_div1_ul1_li"><a href="###">饮食资讯</a></li>
						<li><a href="###">健康指南</a></li>
						<li><a href="###">文化典故</a></li>
						<li><a href="###">饮食安全</a></li>
					</ul>
					<ul class="end_div1_ul1" style="margin-right: 0px;">
						<li class="end_div1_ul1_li"><a href="###">服务中心</a></li>
						<li><a href="###">服务细节</a></li>
						<li><a href="###">我要预订</a></li>
						<li><a href="###">会员活动</a></li>
					</ul>													
				</div>	
				<div class="end_div2">
					<p class="end_div2_p1">
						<span>就餐地址 : 成都市锦江区牛市口266号</span>
						<span style="margin: 0 120px;">版权所有&copy;2015 食味坊 | SWMOO</span>
						<span>订座电话 : <a href="###" style="font-size: 20px">028-5876922</a></span>
					</p>
					<p class="end_div2_p2">
						<span class="end_div2_p2_span1">备案号 ：蜀ICP备11012211号</span>
						<span class="end_div2_p2_span2">投诉电话 : <a href="###" style="font-size: 20px">400-800-9090</a></span>
					</p>
				</div>													
			</div>
		</div>	
		<!-- 返回顶部 -->
		<div class="bk_top">
			<a href="#"><span>返回顶部</span></a>
			<a href="###"><img src="<%=basePath%>/images/bi.jpg"></a>
		</div>				
	</div>	
</body>
<script type="text/javascript" src="<%=basePath%>js/jquery.min.js"></script>
<script type="text/javascript" src="<%=basePath%>js/loginout.js"></script>
</html>