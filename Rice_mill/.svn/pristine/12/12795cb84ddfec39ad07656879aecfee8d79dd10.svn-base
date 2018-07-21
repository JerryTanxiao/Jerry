<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
ResourceBundle res = ResourceBundle.getBundle("resources");
%>
<!DOCTYPE html>
<html>
<head>
	<title>网站首页</title>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/cy.css">
</head>
<body>
	<div class="page_one">
		<!-- top -->
		<div class="bck1">
			<div class="w1190">
				<img class="logo" src="<%=basePath%>/images/logo.jpg">
				<div id="inout"><a href="register.do">注册</a><a>&nbsp;|&nbsp;</a><a href="login.do">登录</a></div>
				<div class="w1190_fr">
					<span class="w1190_span1">定座电话 : 028-5876992</span>
					<div>
						<a href="###">
							<img src="<%=basePath%>/images/xx.jpg">
							<span id="collection">收藏我们</span>
						</a>
					</div>
				</div>
			</div>
		</div>
		<div class="clear"></div>
		<!-- 导航栏 -->
		<div class="bck2">
			<div class="w900">
				<ul class="w900_ul1">
					<li><a href="###" style="background-color: #0D856A; color: #fff;">网站首页</a></li>
					<li><a href="gy.do">关于我们</a></li>
					<li><a href="cp.do">菜品展示</a></li>
					<li><a href="ys.do">饮食资讯</a></li>
					<li><a href="lx.do">联系我们</a></li>
					<li><a href="fw.do">服务中心</a></li>
				</ul>
			</div>
		</div>
		<!-- banner图 -->
		<div class="banner">
			<!-- banner图上类容 -->
			<div class="banner_div">
				<dl class="banner_dl1">
					<dt class="banner_dt1"><img src="<%=basePath%>/images/one_a.png"></dt>
					<dd class="banner_dd1">
						<p class="banner_p1">美食学堂</p>
						<p>	
							大厨教你做美食大厨教你做美食大厨教你做美食大厨教你做美食大厨教你做美食大厨教你做……
						</p>
					</dd>
				</dl>

				<dl class="banner_dl1" style="margin: 0 30px;">
					<dt class="banner_dt1"><img src="<%=basePath%>/images/one_b.png"></dt>
					<dd class="banner_dd1">
						<p class="banner_p1">新品上架</p>
						<p>	
							本月推出新菜本月推出新菜本月推出新菜……
						</p>
					</dd>
				</dl>

				<dl class="banner_dl1">
					<dt class="banner_dt1"><img src="<%=basePath%>/images/one_c.png"></dt>
					<dd class="banner_dd1">
						<p class="banner_p1">会员活动</p>
						<p>	
							每月21日是本店会员日每月21日是本店会员日每月21日是本店会员日每月21日是本店会员日……
						</p>
					</dd>
				</dl>				
			</div>
		</div>
		<!-- 类容1 -->
		<div class="bck3">
			<div class="w1200">
				<div class="bck3_div1">
					<img src="<%=basePath%>/images/one_z.jpg">
					<p class="bck3_p1">
						<span class="bck3_span">每日均有6款精品菜半价出售</span>
						<a class="bck3_a" href="###">查看优惠详情 &gt;</a>
					</p>
					<p class="bck3_p2">即日起，本店推出每日优惠活动，该日活动菜品均半价出售，活动详情简述巴拉
					巴拉。俗话说，“冬不藏精，春必病温”。冬季，人体阳气内藏、阴精固守，是机体
					能量的蓄积阶段，适合养生最好的时节。但不同的体质、性别、年龄、工作、环境
					有着不同程度的变化，因此，我们应根据自身的变化来补益身体，打造属于自己的
					冬季养生攻略……</p>
				</div>
				<div class="w1200">
					<ul class="bck3_ul1">
					<%int i=1; %>
					<c:forEach items="${goods}" var="i">
					<%if (i>6){
						i=6;
					} %>
						<li class="bck3_ul1_li<%=i++%>">
							<img src="<%=basePath%>/images/${i.goodsimage}" style="width:380px;height:300px;">
							<div class="bck3_ul1_div">
								<p class="bck3_ul1_div_p1">${i.goodsname}</p>
								<p class="bck3_ul1_div_p2">${i.goodscontent}</p>
								<p class="bck3_ul1_div_p3">
									<span class="bck3_ul1_div_p3_span1">￥${i.goodsprice/2}</span>
									<span class="bck3_ul1_div_p3_span2">原价￥${i.goodsprice}</span>
								</p>
							</div>
						</li>					
					</c:forEach>
					</ul>
				</div>
			</div>
		</div>
		<!-- 类容2 -->
		<div class="bck4">
			<div class="bck4_bj">
				<div class="w1200" style="position: relative;">
					<div class="bck3_div1"><img src="<%=basePath%>/images/one_g.png"></div>
					<p class="bck4_bj_p1"><%=res.getString("slogan")%></p>
					<span style="font-size: 20px;position: absolute;top: 161px;left: 760px;color: #F5B919;"><%=res.getString("name")%></span>
					<p class="bck4_bj_p2">
						<span>&nbsp;&nbsp;&nbsp;&nbsp;</span><%=res.getString("information1") %>
					</p>
					<div class="bck4_div1">
						<div class="bck4_div2">
							<p class="bck4_div2_p1"><%=res.getString("information2") %></p>
							<p class="bck4_div2_p2"><%=res.getString("information3") %></p>
						</div>
						<dl>
							<dt><img src="<%=basePath%>/images/one_i.jpg"></dt>
							<dd><a href="fw.do#cc">我要预订</a></dd>
						</dl>
						<dl>
							<dd><a href="#cc">大厨推荐</a></dd>
							<dt><img src="<%=basePath%>/images/one_j.jpg"></dt>
						</dl>
					</div>
				</div>
			</div>
		</div>
		<!-- 类容3 -->
		<div class="bck5">
			<a id="cc"></a>
			<div class="w1200" style="overflow: hidden;">
				<div class="bck3_div1"><img src="<%=basePath%>/images/one_k.png"></div>
				<a class="bck3_a" href="###" style="margin-top: -40px">查看优惠详情 &gt;</a>
			
				<div class="bck5_div1">
					<img src="<%=basePath%>/images/one_l.jpg">
					<div class="bck5_div1_div">
						<p class="bck5_div1_div_p1">李阳&nbsp;&nbsp;&nbsp;&nbsp;厨师长</p>
						<p class="bck5_div1_div_p2">从业40年，2014年第二届厨师大赛评委</p>
					</div>				
				</div>
				<div class="bck5_div1" style="margin: 0 26px;">
					<img src="<%=basePath%>/images/one_m.jpg">
					<div class="bck5_div1_div">
						<p class="bck5_div1_div_p1">戴维德&nbsp;&nbsp;&nbsp;&nbsp;特级厨师</p>
						<p class="bck5_div1_div_p2">从业30余年，曾在北京100余家担任总厨</p>
					</div>				
				</div>
				<div class="bck5_div1">
					<img src="<%=basePath%>/images/one_n.jpg">
					<div class="bck5_div1_div">
						<p class="bck5_div1_div_p1">邓锋&nbsp;&nbsp;&nbsp;&nbsp;行政总厨</p>
						<p class="bck5_div1_div_p2">从业30余年，曾在北京100余家担任厨长</p>
					</div>				
				</div>
				<div class="bck5_div1" style="margin-left: 26px;">
					<img src="<%=basePath%>/images/one_o.jpg">
					<div class="bck5_div1_div">
						<p class="bck5_div1_div_p1">周邵伟&nbsp;&nbsp;&nbsp;&nbsp;红案总厨</p>
						<p class="bck5_div1_div_p2">从业30余年，曾在北京100余家担任总厨</p>
					</div>				
				</div>	

				<div style="overflow: hidden;width: 1200px; margin: 0 auto;">
					<div class="bck3_div1"><img src="<%=basePath%>/images/one_p.png" style="margin: 60px auto 36px;"></div>
					<a class="bck3_a" href="###" style="margin-top: -40px">查看优惠详情 &gt;</a>

					<dl class="bck5_dl1">
						<dt class="bck5_dl1_dt1"><img src="<%=basePath%>/images/one_q.jpg"></dt>
						<dd class="bck5_dl1_dd1">
						<p>
							<span class="bck5_dl1_dd1_span1"><a href="diet.do?diettheme=你信吗？玉米让你的眼睛更漂亮">你信吗？玉米让你的眼睛更漂亮</a></span>
							<span class="bck5_dl1_dd1_span2">2015-12-29</span>
						</p>
						</dd>
						<dd class="bck5_dl1_dd1">
							<p>
								<span class="bck5_dl1_dd1_span1"><a href="###">健康晚餐三要素，早吃素吃少吃！</a></span>
								<span class="bck5_dl1_dd1_span2">2015-12-28</span>
							</p>
						</dd>					
						<dd class="bck5_dl1_dd1">
							<p style="border: none;">
								<span class="bck5_dl1_dd1_span1"><a href="###">警惕！这五种食物是天然的安眠药</a></span>
								<span class="bck5_dl1_dd1_span2">2015-12-26</span>
							</p>
						</dd>
					</dl>
					<dl class="bck5_dl1" style="margin: 0 60px;">
						<dt class="bck5_dl1_dt1"><img src="<%=basePath%>/images/one_r.jpg"></dt>
						<dd class="bck5_dl1_dd1">
							<p>
								<span class="bck5_dl1_dd1_span1"><a href="###">早餐别吃茶叶蛋</a></span>
								<span class="bck5_dl1_dd1_span2">2015-12-29</span>
							</p>
						</dd>
						<dd class="bck5_dl1_dd1">
							<p>
								<span class="bck5_dl1_dd1_span1"><a href="###">五种健康土豆做法排行榜</a></span>
								<span class="bck5_dl1_dd1_span2">2015-12-28</span>
							</p>
						</dd>					
						<dd class="bck5_dl1_dd1">
							<p style="border: none;">
								<span class="bck5_dl1_dd1_span1"><a href="###">未煮熟的豆浆对人体有什么危害？</a></span>
								<span class="bck5_dl1_dd1_span2">2015-12-26</span>
							</p>
						</dd>
					</dl>
					<dl class="bck5_dl1">
						<dt class="bck5_dl1_dt1"><img src="<%=basePath%>/images/one_s.jpg"></dt>
						<dd class="bck5_dl1_dd1">
							<p>
								<span class="bck5_dl1_dd1_span1"><a href="###">好吃不过饺子，各国饺子大盘点</a></span>
								<span class="bck5_dl1_dd1_span2">2015-12-29</span>
							</p>
						</dd>
						<dd class="bck5_dl1_dd1">
							<p>
								<span class="bck5_dl1_dd1_span1"><a href="###">“六个核桃”里到底有几个核桃</a></span>
								<span class="bck5_dl1_dd1_span2">2015-12-28</span>
							</p>
						</dd>					
						<dd class="bck5_dl1_dd1">
							<p style="border: none;">
								<span class="bck5_dl1_dd1_span1"><a href="###">《芈月传》里饮食“穿帮”吃货表</a></span>
								<span class="bck5_dl1_dd1_span2">2015-12-26</span>
							</p>
						</dd>
					</dl>
				</div>	

				<div class="bck5_div2">
					<span>分享到:</span>
					<a href="###"><img src="<%=basePath%>/images/one_t.png"></a>
					<a href="###"><img src="<%=basePath%>/images/one_u.png"></a>
					<a href="###"><img src="<%=basePath%>/images/one_v.png"></a>
					<a href="###"><img src="<%=basePath%>/images/one_w.png"></a>
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
<script type="text/javascript" src="<%=basePath%>js/jquery.min.js"></script>
<script type="text/javascript" src="<%=basePath%>js/loginout.js"></script> 
<script>
</script>
</html>
