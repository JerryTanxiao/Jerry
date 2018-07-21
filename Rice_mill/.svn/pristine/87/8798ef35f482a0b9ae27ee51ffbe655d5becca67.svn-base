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
	<title>饮食资讯2</title>
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
					<li><a href="ys.do" style="background-color: #0D856A; color: #fff;">饮食资讯</a></li>
					<li><a href="lx.do">联系我们</a></li>
					<li><a href="fw.do">服务中心</a></li>
				</ul>
			</div>
		</div>	
		<!-- banner图 -->
		<div class="banner"></div>	
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
					<li>
						<a href="###">
							<span>健康指南</span>
							<span>&gt;</span>
						</a>
					</li>
					<li>
						<a href="###">
							<span>饮食安全</span>
							<span>&gt;</span>
						</a>
					</li>
					<li style="margin-bottom:70px;">
						<a href="###">
							<span>文化典故</span>
							<span>&gt;</span>
						</a>
					</li>
				</ul>
				<ul class="ul2">
					<li>
						<img src="<%=basePath%>/images/two_f.png">
						<div class="ul2_div1">
							<p>就餐地址	:</p>
							<p>成都市锦江区牛市口266号</p>
						</div>
					</li>

					<li>
						<img src="<%=basePath%>/images/two_g.png">
						<div class="ul2_div1">
							<p>订座电话	:</p>
							<p>028-5876922</p>
						</div>
					</li>
				</ul>
			</div>
			<div class="two_div3">	
				<div class="five_div1">
					<p class="five_div1_p1">${diet.diettheme }</p>
					<p class="five_div1_p2">
						<span style="float:left;">${diet.dietdate }</span>
						<span style="float:right;">访问量：217</span>
					</p>
				</div>
				<dl class="five_dl">
					<dt><img src="<%=basePath%>/images/${diet.dietimage}"></dt>
					<dd>
						<p style="margin:30px auto 40px;font-family:'微软雅黑';font-size: 1.2em;">
						${diet.dietinfo}
						</p>
						<!-- <p style="margin:30px auto 40px;">玉米，是许多人最爱的蔬菜。事实上，玉米不能算是蔬菜，因为它含有许多淀粉，热量较一般蔬菜高，因此在营养学上，玉米被归类为主食类。</p>
						<p>中医认为，玉米性平味甘，有开胃、健脾、除湿、利尿等作用，主治腹泻、消化不良、水肿等。根据营养分析，玉米含有醣类、蛋白质、胡萝卜素、黄体素、玉米黄质、磷、镁、钾、锌等。老年黄斑性病变(AMD)是眼睛老化所造成的疾病，严重时会造成视力缺损。从许多流行病学的研究发现，黄体素、玉米黄质，可以预防老年黄斑性病变的产生。</p>
						<p style="margin:30px auto 40px;"> 根据1994年美国哈佛大学医学院和许多研究中心一起做的研究显示，摄取较高量的黄体素和玉米黄质，能降低43%罹患老年黄斑性病变的机率。玉米含有黄体素、玉米黄质，尤其后者含量较丰，因此玉米可说是抗眼睛老化的极佳补充食物。</p>
						<p>   从抗自由基角度来看，美国康乃尔大学在《农业与食品化学期刊》的研究显示，在摄氏115度下，将甜玉米分别加热10分钟、25分钟和50分钟后发现，其抗自由基的活性依序升高了22%、44%和53%。市面上的玉米罐头，可提供不同的烹调使用，但玉米易受潮发霉而易产生黄曲毒素，因此保存时应置于阴凉干燥处。</p> -->
					</dd>
				</dl>
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