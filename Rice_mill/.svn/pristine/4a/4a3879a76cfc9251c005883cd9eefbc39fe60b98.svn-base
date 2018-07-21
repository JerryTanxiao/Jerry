<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>服务咨询</title>
	<link rel="stylesheet" type="text/css" href="<%=basePath%>/css/cy.css">
</head>
<body>
	<div class="page_seven">
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
					<li><a href="lx.do">联系我们</a></li>
					<li><a href="fw.do">联系我们</a></li>
					<li><a href="###" style="background-color: #0D856A; color: #fff;">会员中心</a></li>
				</ul>
			</div>
		</div>
		<!-- banner图 -->
		<div class="banner"></div>
		<div class="w1200" style="overflow:hidden;">
			<!-- 上面部分 -->
			<div class="two_div1">
				<p class="two_div1_p1">
					<img src="<%=basePath%>/images/seven.png">
					<span>会员</span><span style="color: #0D856A;">信息</span>
				</p>
				<p class="two_div1_p2">您的位置 ：<a href="index.do">首页</a>&gt;<span style="color: #0D856A;">会员中心</span></p>
			</div>
			<!-- 下面部分 -->
			<div class="two_div2">
				<ul class="ul1">
					<li>
						<a href="#">
							<span class="ul1_li1_span1">会员资料</span>
							<span class="ul1_li1_span2">&gt;</span>
						</a>
					</li>
					<li>
						<a href="#">
							<span class="ul1_li1_span1">会员消费</span>
							<span class="ul1_li1_span2">&gt;</span>
						</a>
					</li>
					<li style="margin-bottom:70px;">
						<a href="#">
							<span class="ul1_li1_span1">会员充值</span>
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
			<div class="two_div3">	
				<p class="p1">会员消费</p>	
				<div class="seven_div1">
					<table>
						<thead>
							<tr class="trcolor1">
								<th>流水号</th>
								<th>消费时间</th>
								<th>交易单号</th>
								<th>消费金额</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${sessionScope.pic.list }" var="c">
								<tr class="trcolor2">
									<td>${c.cId }</td>
									<td><fmt:formatDate value="${c.cTime }" pattern="yyyy年MM月dd日 HH点mm分ss秒" /></td>
									<td>${c.cOrderNumber }</td>
									<td>${c.cMoney }</td>
								</tr>
							</c:forEach>	
						</tbody>
						<tfoot>
							<tr>
								<td></td>
								<td colspan="2">
									<a href="##" onclick="page(${pic.firstPage })">首页</a>&nbsp;
									<a href="##" onclick="page(${pic.prePage })">上一页</a>&nbsp;
									第<input type="text" id="pagenum" value="${pic.pageNum }" style="width: 15px;"/>页 /
									共<span id="gongji">${pic.pages }</span>页
									<a href="##" onclick="page($('#pagenum').val())">跳转</a>
									&nbsp;<a href="##" onclick="page(${pic.nextPage })">下一页</a>&nbsp;
									<a href="##" onclick="page(${pic.lastPage })">尾页</a>
								</td>
								<td><span>共${pic.total}条记录</span></td>
							</tr>
						</tfoot>
					</table>
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
	$(function(){
		$("#fak").text("来呀快活呀，反正有大把时光！");
	});
</script>
</html>