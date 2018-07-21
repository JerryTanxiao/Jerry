<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>菜品展示</title>
	<link rel="stylesheet" type="text/css" href="<%=basePath%>/css/cy.css">
</head>
<body>
	<div class="page_three">
		<div class="bck1">
			<div class="w1190">
				<img class="logo" src="<%=basePath%>/images/logo.jpg">
				<div id="inout">
				<a href="###">注册&nbsp;|&nbsp;登录</a>
				</div>
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
					<li><a href="###" style="background-color: #0D856A; color: #fff;">菜品展示</a></li>
					<li><a href="ys.do">饮食资讯</a></li>
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
					<img style="margin-top: 5px;" src="<%=basePath%>/images/three_a.png">
					<span>菜品</span><span style="color: #0D856A;">展示</span>
				</p>
				<p class="two_div1_p2">您的位置 ：<a href="index.do">首页</a>&gt;<a href="gy.do">关于我们</a>&gt;<span style="color: #0D856A;">营养汤品</span></p>
			</div>	
				<!-- 下面部分 -->
			<div class="two_div2">
				<ul class="ul1">
					<li>
						<a href="cp.do" class="t1">
							<span class="ul1_li1_span1">大厨推荐</span>
							<span class="ul1_li1_span2">&gt;</span>
						</a>
					</li>
					<li>
						<a href="cpsoup.do?goodstype=今日食谱" class="t1">
							<span class="ul1_li1_span1">今日食谱</span>
							<span class="ul1_li1_span2">&gt;</span>
						</a>
					</li>
					<li>
						<a href="cpsoup.do?goodstype=新菜上架" class="t1">
							<span class="ul1_li1_span1">新菜上架</span>
							<span class="ul1_li1_span2">&gt;</span>
						</a>
					</li>
					<li>
						<a href="cpsoup.do?goodstype=每日优惠" class="t1">
							<span class="ul1_li1_span1">每日优惠</span>
							<span class="ul1_li1_span2">&gt;</span>
						</a>
					</li>
					<li>
						<a href="cpsoup.do?goodstype=营养汤品" class="t1">
							<span class="ul1_li1_span1">营养汤品</span>
							<span class="ul1_li1_span2">&gt;</span>
						</a>
					</li>	
					<li>
						<a href="cpsoup.do?goodstype=经典主食" class="t1">
							<span class="ul1_li1_span1">经典主食</span>
							<span class="ul1_li1_span2">&gt;</span>
						</a>
					</li>						
					<li style="margin-bottom:70px;">
						<a href="cpsoup.do?goodstype=特色面点" class="t1">
							<span class="ul1_li1_span1">特色面点</span>
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
				<p class="p1">公司简介</p>
				<ul class="tupian">
					<%
						Integer i = 0;
					%>
					<c:forEach items="${goods.list}" var="list">
						<%
							i++;
						%>
						<%
							if (i % 2 != 0) {
						%>
						<li>
							<div class="tupian_div1">
								<img src="<%=basePath%>/images/${list.goodsimage}"
									style="width: 450px;height: 360px;">
								<p>${list.goodsname}/原价￥${list.goodsprice}</p>
							</div> <%
 	} else {
 %>
							<div class="tupian_div2">
								<img src="<%=basePath%>/images/${list.goodsimage}"
									style="width: 450px;height: 360px;">
								<p>${list.goodsname}/原价￥${list.goodsprice}</p>
							</div>
						</li>
						<%
							}
						%>
					</c:forEach>
				</ul>

				<div class="four_div6">
					<ul>
						<li><font size="2">共 ${goods.pages} 页</font></li>
						<li><font size="2">第 ${goods.pageNum} 页</font></li>
						<li><a href="cpsoup.do?pageNum=1&&goodstype=${goods.list[0].goodstype}">首页</a></li>
						<li><c:choose>
								<c:when test="${goods.pageNum - 1 > 0}">
									<a href="cpsoup.do?pageNum=${page.pageNum - 1}&&goodstype=${goods.list[0].goodstype}">上一页</a>
								</c:when>
								<c:when test="${goods.pageNum - 1 <= 0}">
									<a href="cpsoup.do?pageNum=1&&goodstype=${goods.list[0].goodstype}">上一页</a>
								</c:when>
							</c:choose></li>
						<li><c:choose>
								<c:when test="${goods.pages==0}">
									<a href="cpsoup.do?pageNum=${goods.pageNum}&&goodstype=${goods.list[0].goodstype}">下一页</a>
								</c:when>
								<c:when test="${goods.pageNum + 1 < goods.pages}">
									<a href="cpsoup.do?pageNum=${goods.pageNum + 1}&&goodstype=${goods.list[0].goodstype}">下一页</a>
								</c:when>
								<c:when test="${goods.pageNum+ 1 >= goods.pages}">
									<a href="cpsoup.do?pageNum=${goods.pages}&&goodstype=${goods.list[0].goodstype}">下一页</a>
								</c:when>
							</c:choose></li>
						<li><c:choose>
								<c:when test="${goods.pages==0}">
									<a href="cpsoup.do?pageNum=${goods.lastPage}&&goodstype=${goods.list[0].goodstype}">尾页</a>
								</c:when>
								<c:otherwise>
									<a href="cpsoup.do?pageNum=${goods.lastPage}&&goodstype=${goods.list[0].goodstype}">尾页</a>
								</c:otherwise>
							</c:choose></li>
					</ul>
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
<script type="text/javascript" src="<%=basePath%>js/loginout.js"></script>
</html>