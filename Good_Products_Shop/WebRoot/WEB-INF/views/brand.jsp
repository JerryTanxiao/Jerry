<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()+ path + "/";
ResourceBundle res = ResourceBundle.getBundle("use");
ResourceBundle company = ResourceBundle.getBundle("company");
%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="css/index_1.css">
<link rel="stylesheet" type="text/css" href="css/index_2.css">
<link href="ico/cat.ico" rel="shortcut icon">
<title>品牌加盟</title>
</head>
<body>
	<div class="header">
		<div class="header-top"></div>
		<div class="header_1">
			<div class="logo fl">
				<a href="<%=res.getString("lppz")%>"><img src="images/logo.png"></a>
			</div>
			<ul class="nav_1">
				<li class="nav_1-2" style="margin-left:0;"><a href="<%=res.getString("index")%>">首页</a></li>
				<li class="nav_1-3"><a href="<%=res.getString("about")%>">关于良品铺子</a></li>
				<li class="nav_1-4"><a href="<%=res.getString("product")%>">产品中心</a></li>
				<li class="nav_1-5"><a href="#">新闻中心</a></li>
				<li class="on_1" style="margin-left:72px;"><a href="#">品牌加盟</a></li>
				<li class="nav_1-6"><a href="<%=res.getString("advertise")%>">企业招聘</a></li>
				<li class="nav_1-7"><a href="<%=res.getString("connect")%>">联系我们</a></li>
			</ul>
		</div>
	</div>
	<!-- header结束 -->
	<div class="banner_3">
		<a href="#"></a>
		<div class="focus_1">
			<a href="<%=res.getString("index")%>"></a>
            <a href="<%=res.getString("about")%>"></a>
            <a href="<%=res.getString("product")%>"></a>
            <a href="#"></a>
            <a href="#" class="on_6"></a>
            <a href="<%=res.getString("advertise")%>"></a>
            <a href="<%=res.getString("connect")%>"></a>
		</div>

	</div>
	<!--banner_3结束-->
	<div class="box_12">
		<div class="title_3">
			<p class="title_3-1">品牌加盟</p>
			<div class="square_1"></div>
			<p class="title_3-2">LEARN &nbsp;MORE
				&nbsp;ABOUT&nbsp;LIANGPINPIZI</p>
			<ul class="nav_5 fl">
				<li><a href="#">加盟信息</a></li>
				<li class="on_2 nav_5-2"><a href="#">加盟文化</a></li>
				<li><a href="#">我要加盟</a></li>
			</ul>
		</div>
	</div>
	<div class="box_13">
	<c:forEach items="${page.listData}" var="i">
			<dl class="one-13">
			<dt class="fl">
				<img src='images/${i.joinimage}'>
			</dt>
			<dd>
				<p class="box_13-1">
					<a href="#">${i.jointheme}</a>
				</p>
				<p class="box_13-2">${i.jointime }</p>
				<p class="box_13-3">${i.joincontent }</p>
				<p class="box_13-4">
					<a href="#">查看详情&gt;</a>
				</p>
			</dd>
		</dl>
	</c:forEach>
		<!-- <dl class="one-13">
			<dt class="fl">
				<img src="images/pic_28.jpg">
			</dt>
			<dd>
				<p class="box_13-1">
					<a href="#">良品铺子湖北 全线开放加盟了</a>
				</p>
				<p class="box_13-2">2015-12-31</p>
				<p class="box_13-3">招商会近期，有一则消息在朋友圈疯传，良品铺子湖北全线开放加盟了。这个是真的吗？小编想说招商会近期，
					有一则消息在朋友圈疯传，良品铺子湖北全线开放加盟了。这个是真的吗？小编想说当然是真的当然是真的招
					商会近期，有一则消息在朋友圈疯传,良品铺子湖北全线开放加盟了。这个是真的吗?小编想说当然［...］</p>
				<p class="box_13-4">
					<a href="#">查看详情&gt;</a>
				</p>
			</dd>
		</dl>
		<dl class="one-13">
			<dt class="fl">
				<img src="images/pic_29.jpg">
			</dt>
			<dd>
				<p class="box_13-1">
					<a href="#">惊喜：良品铺子湖北 全线开放加盟了</a>
				</p>
				<p class="box_13-2">2015-12-31</p>
				<p class="box_13-3">招商会近期，有一则消息在朋友圈疯传，良品铺子湖北全线开放加盟了。这个是真的吗？小编想说招商会近期，
					有一则消息在朋友圈疯传，良品铺子湖北全线开放加盟了。这个是真的吗？小编想说当然是真的当然是真的招
					商会近期，有一则消息在朋友圈疯传,良品铺子湖北全线开放加盟了。这个是真的吗?小编想说当然［...］</p>
				<p class="box_13-4">
					<a href="#">查看详情&gt;</a>
				</p>
			</dd>
		</dl>
		<dl class="one-13">
			<dt class="fl">
				<img src="images/pic_30.jpg">
			</dt>
			<dd>
				<p class="box_13-1">
					<a href="#">惊喜：良品铺子湖北 全线开放加盟了</a>
				</p>
				<p class="box_13-2">2015-12-31</p>
				<p class="box_13-3">招商会近期，有一则消息在朋友圈疯传，良品铺子湖北全线开放加盟了。这个是真的吗？小编想说招商会近期，
					有一则消息在朋友圈疯传，良品铺子湖北全线开放加盟了。这个是真的吗？小编想说当然是真的当然是真的招
					商会近期，有一则消息在朋友圈疯传,良品铺子湖北全线开放加盟了。这个是真的吗?小编想说当然［...］</p>
				<p class="box_13-4">
					<a href="#">查看详情&gt;</a>
				</p>
			</dd>
		</dl>
		<dl class="one-13">
			<dt class="fl">
				<img src="images/pic_31.jpg">
			</dt>
			<dd>
				<p class="box_13-1">
					<a href="#">惊喜：良品铺子湖北 全线开放加盟了</a>
				</p>
				<p class="box_13-2">2015-12-31</p>
				<p class="box_13-3">招商会近期，有一则消息在朋友圈疯传，良品铺子湖北全线开放加盟了。这个是真的吗？小编想说招商会近期，
					有一则消息在朋友圈疯传，良品铺子湖北全线开放加盟了。这个是真的吗？小编想说当然是真的当然是真的招
					商会近期，有一则消息在朋友圈疯传,良品铺子湖北全线开放加盟了。这个是真的吗?小编想说当然［...］</p>
				<p class="box_13-4">
					<a href="#">查看详情&gt;</a>
				</p>
			</dd>
		</dl> -->
		<div class="turn_num">
			<a href="<%=path %>/Brand?currentPage=${page.perpage}" class="up_1 fl">上一页</a> <a href="<%=path %>/Brand?currentPage=${page.nextPage}" class="down_1 fr">下一页</a>
			<ul class="turn_num-1 fl">
				<li class="turn_num-2"><a href="<%=path %>/Brand?currentPage=1">首页</a></li>
				<li class="turn_num-3"><a href="<%=path %>/Brand?currentPage=${page.totalPage}">尾页</a></li>
				<li class="turn_num-4"><a href="#">.....</a></li>
			</ul>
		</div>
	</div>
	<div class="box_11">
		<div class="box_11-1">
			<p class="box_11-2">树根文化</p>
			<div class="pic_9">
				<img src="images/pic-2.png">
			</div>
			<p class="box_11-3"><%=company.getString("culture")%></p>
		</div>
	</div>
	<!--box_11结束-->
	<div class="footer">
		<div class="box_7">
			<div class="content_2 fl">
				<div class="background_3 fl">
					<div class="contact_1">
						<p class="contact_1-1">CONTACT</p>
						<p class="contact_1-2">FOR&nbsp;ME</p>
					</div>
				</div>
				<div class="word_4 fr">
					<p class="word_4-1">ONLINE&nbsp;SERVICE</p>
					<p class="word_4-2"><%=company.getString("phone")%></p>
					<hr class="word_4-3">
					<p class="word_4-4">传真：<%=company.getString("fax")%></p>
					<p class="word_4-5">邮箱：<%=company.getString("email")%></p>
				</div>
			</div>
			<div class="content_3 fr">
				<div class="nav_3 fl">
					<li class="nav_3-1">关于良品铺子</li>
					<li><a href="<%=res.getString("about")%>">企业简介</a></li>
					<li><a href="<%=res.getString("about")%>">企业文化</a></li>
					<li><a href="<%=res.getString("about")%>">企业历程</a></li>
				</div>
				<div class="nav_4 fr">
					<li class="nav_3-1">产品中心</li>
					<li><a href="<%=res.getString("product")%>">新款上市</a></li>
					<li><a href="<%=res.getString("product")%>">明星爆款</a></li>
					<li><a href="<%=res.getString("product")%>">产品总汇</a></li>
				</div>
			</div>
		</div>
		<div class="footer-bottom">
			<div class="footer-bottom_1">
				<p>COPYRIGHT&nbsp;&copy;&nbsp;2011&nbsp;ZHOUHEIYA.&nbsp;ALL&nbsp;RIGHTS&nbsp;RESERVED鄂ICP&nbsp;
					备07004825号&nbsp;POWERED&nbsp;BY&nbsp;JL-TECH&nbsp;京伦科技</p>
			</div>
		</div>
	</div>
	<!--footer结束-->
<%-- 	<script type="text/javascript" src="jq/jquery-3.3.1.js"></script>
	<script type="text/javascript">
		$(function() {
			$.ajax({
				url : 'JoinAction',
				type : 'post',
				async : false,
				dataType : 'json',
				success : function(data) {
				var str=null;
					for (x in data.joinlist) {
						for (y in data.joinlist[x]) {
							  alert(data.joinlist[x][y])
						/* str+="<dl class="one-13"><dt class="fl"><img src="images/data.join[x][y].image"></dt><dd><p class="box_13-1"><a href="#">良品铺子湖北 全线开放加盟了</a></p><p class="box_13-2">2015-12-31</p><p class="box_13-3">招商会近期，有一则消息在朋友圈疯传，良品铺子湖北全线开放加盟了。这个是真的吗？小编想说招商会近期，有一则消息在朋友圈疯传，良品铺子湖北全线开放加盟了。这个是真的吗？小编想说当然是真的当然是真的招商会近期，有一则消息在朋友圈疯传,良品铺子湖北全线开放加盟了。这个是真的吗?小编想说当然［...］</p><p class="box_13-4"><a href="#">查看详情&gt;</a></p></dd></dl>"; */
	
						}
					}
				}
			});
		})
	</script> --%>
<script type="text/javascript" src="jq/jquery-3.3.1.js"></script>
<%-- <script type="text/javascript" src="jq/J.js"></script> --%>
</body>
</html>
