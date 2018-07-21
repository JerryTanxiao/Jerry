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
	<title>饮食资讯</title>
	<link rel="stylesheet" type="text/css" href="<%=basePath%>/css/cy.css">
</head>
<body>
	<div class="page_four1">
		<div class="bck1">
			<div class="w1190">
				<img class="logo" src="<%=basePath%>/images/logo.jpg">
				<c:if test="${sessionScope.user != null }">
					<a style="color: white;">会员:${sessionScope.user.username}&nbsp;|&nbsp;</a><a id="zhuxiao" href="#">注销</a>
				</c:if>
				<c:if test="${sessionScope.user == null }">
					<a href="register.do">注册&nbsp;|</a><a href="login.do">&nbsp;登录</a>
				</c:if>
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
					<li><a href="###" style="background-color: #0D856A; color: #fff;">饮食资讯</a></li>
					<li><a href="lx.do">联系我们</a></li>
					<li><a href="fw.do">服务中心</a></li>
				</ul>
			</div>
		</div>	
		<!-- banner图 -->
		<div class="banner"></div>	
		<!-- 类容 -->
		<div class="w1200" style="overflow:hidden;">
			<!-- 上面部分 -->
			<div class="two_div1">
				<p class="two_div1_p1">
					<img src="<%=basePath%>/images/four_a.png">
					<span>饮食</span><span style="color: #0D856A;">资讯</span>
				</p>
				<p class="two_div1_p2">您的位置 ：<a href="index.do">首页</a>&gt;<a href="gy.do">关于我们</a>&gt;<span style="color: #0D856A;">健康指南</span></p>
			</div>
			<!-- 下面部分 -->
			<div class="two_div2">
				<ul class="ul1">
					<li style="background-color:#0D856A;">
						<a href="###">
							<span class="ul1_li1_span1" style="color: #fff;">健康指南</span>
							<span class="ul1_li1_span2">&gt;</span>
						</a>
					</li>
					<li>
						<a href="###">
							<span class="ul1_li1_span1">饮食安全</span>
							<span class="ul1_li1_span2">&gt;</span>
						</a>
					</li>
					<li style="margin-bottom:70px;">
						<a href="###">
							<span class="ul1_li1_span1">文化典故</span>
							<span class="ul1_li1_span2">&gt;</span>
						</a>
					</li>
				</ul>
				<ul class="ul2">
					<li>
						<img src="<%=basePath%>/images/two_f.png">
						<div class="ul2_div1">
							<p class="ul2_div1_p1">就餐地址	:</p>
							<p>成都市锦江区牛市口266号</p>
						</div>
					</li>

					<li>
						<img src="<%=basePath%>/images/two_g.png">
						<div class="ul2_div1">
							<p class="ul2_div1_p1">订座电话	:</p>
							<p>028-5876922</p>
						</div>
					</li>
				</ul>
			</div>
			<!-- 图文部分 -->
			<div class="two_div3">	
				<p class="p1">健康指南</p>
				<div class="page_four_div1">
					<img src="<%=basePath%>/images/four_b.jpg">
					<div class="four_div2">
						<div class="four_div3">
							<div class="four_div4">
								<p class="four_div4_p1">29</p>
								<p>2015-12</p>
							</div>
							<p class="four_p1">你信吗？玉米让你的眼睛更漂亮</p>
						</div>
						<p class="four_p2">玉米，是许多人最爱的蔬菜。事实上，玉米不能算是蔬菜，因为它含有许多淀粉，热量较一般蔬菜
						高，因此在营养学上，玉米被归类为主食类。中医认为，玉米性平味甘，有开胃……</p>
						<p style="margin-left:30px;"><a id="a1" href="diet.do?diettheme=你信吗？玉米让你的眼睛更漂亮" >查看更多 &gt;&gt;</a></p>
					</div>
				</div>
				<div class="four_div5">
					<dl class="four_dl1">
						<dt class="four_dt1"><a href="###"><img src="<%=basePath%>/images/four_c.jpg"></a></dt>
						<dd class="four_dd1">
							<div class="four_dd1_div1">
								<div class="four_dd1_div">
									<p class="four_dd1_div_p1">28</p>
									<p>2015-12</p>
								</div>
								<p class="four_dd1_p" >警惕！这五种食物是天然的安眠药</p>
							</div>
						</dd>
					</dl>	
					<dl class="four_dl1" style="margin:0 21px;">
						<dt class="four_dt1"><a href="###"><img src="<%=basePath%>/images/four_d.jpg"></a></dt>
						<dd class="four_dd1">
							<div class="four_dd1_div1">
								<div class="four_dd1_div">
									<p class="four_dd1_div_p1">26</p>
									<p>2015-12</p>
								</div>
								<p class="four_dd1_p">健康晚餐三要素，早吃素吃少吃！</p>
							</div>
						</dd>
					</dl>	
					<dl class="four_dl1">
						<dt class="four_dt1"><a href="###"><img src="<%=basePath%>/images/four_e.jpg"></a></dt>
						<dd class="four_dd1">
							<div class="four_dd1_div1">
								<div class="four_dd1_div">
									<p class="four_dd1_div_p1">26</p>
									<p>2015-12</p>
								</div>
								<p class="four_dd1_p">土豆当菜好处减半?详解怎样正确吃土豆</p>
							</div>
						</dd>
					</dl>	
					<dl class="four_dl1">
						<dt class="four_dt1"><a href="###"><img src="<%=basePath%>/images/four_c.jpg"></a></dt>
						<dd class="four_dd1">
							<div class="four_dd1_div1">
								<div class="four_dd1_div">
									<p class="four_dd1_div_p1">28</p>
									<p>2015-12</p>
								</div>
								<p class="four_dd1_p">警惕！这五种食物是天然的安眠药</p>
							</div>
						</dd>
					</dl>	
					<dl class="four_dl1" style="margin:0 21px;">
						<dt class="four_dt1"><a href="###"><img src="<%=basePath%>/images/four_d.jpg"></a></dt>
						<dd class="four_dd1">
							<div class="four_dd1_div1">
								<div class="four_dd1_div">
									<p class="four_dd1_div_p1">26</p>
									<p>2015-12</p>
								</div>
								<p class="four_dd1_p">健康晚餐三要素，早吃素吃少吃！</p>
							</div>
						</dd>
					</dl>	
					<dl class="four_dl1">
						<dt class="four_dt1"><a href="###"><img src="<%=basePath%>/images/four_e.jpg"></a></dt>
						<dd class="four_dd1">
							<div class="four_dd1_div1">
								<div class="four_dd1_div">
									<p class="four_dd1_div_p1">26</p>
									<p>2015-12</p>
								</div>
								<p class="four_dd1_p">土豆当菜好处减半?详解怎样正确吃土豆</p>
							</div>
						</dd>
					</dl>																				
				</div>
				<div class="four_div6">
					<ul style="overflow:hidden;">
						<li><a href="###">上一页</a></li>
						<li><a href="###" style="color:#6BAC9C;">1</a></li>
						<li><a href="###">2</a></li>
						<li><a href="###">3</a></li>
						<li><a href="###">4</a></li>
						<li><a href="###">5</a></li>
						<li><a href="###">.....</a></li>
						<li><a href="###">20</a></li>
						<li><a href="###">下一页</a></li>
					</ul>
				</div>
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
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="<%=basePath%>js/jquery.min.js"></script>
<script type="text/javascript" src="<%=basePath%>js/loginout.js"></script>
</html>