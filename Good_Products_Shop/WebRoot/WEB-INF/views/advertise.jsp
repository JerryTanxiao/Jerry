<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()+ path + "/";
ResourceBundle res = ResourceBundle.getBundle("use");
ResourceBundle company = ResourceBundle.getBundle("company");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="css/index_1.css">
<link rel="stylesheet" type="text/css" href="css/index_2.css">
<link href="ico/cat.ico" rel="shortcut icon">
<title>企业招聘</title>
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
				<li class="nav_1-6"><a href="<%=res.getString("brand")%>">品牌加盟</a></li>
				<li class="on_1" style="margin-right:72px;"><a href="#">企业招聘</a></li>
				<li class="nav_1-7"><a href="<%=res.getString("connect")%>">联系我们</a></li>

			</ul>
		</div>
	</div>
	<!-- header结束 -->
	<div class="banner_4">
		<a href="#"></a>
		<div class="focus_1">
			<a href="<%=res.getString("index")%>"></a>
               <a href="<%=res.getString("about")%>"></a>
               <a href="<%=res.getString("product")%>"></a>
               <a href="#"></a>
               <a href="<%=res.getString("brand")%>"></a>
               <a href="#" class="on_6"></a>
               <a href="<%=res.getString("connect")%>"></a>
		</div>
	</div>
	<!--banner_4结束-->
	<div class="box_14-1">
		<div class="title_3">
			<p class="title_3-1">企业简介</p>
			<div class="square_1"></div>
			<p class="title_3-2">THE&nbsp;FOLLOWING&nbsp;INFORMATION&nbsp;CAN&nbsp;BE&nbsp;CONVENIENT&nbsp;TO&nbsp;CONTACT&nbsp;US</p>
			<ul class="nav_6 fl">
				<li class="on_3"><a href="#">校园招聘
				</a></li>
				<li><a href="#">社会招聘</a></li>
			</ul>
		</div>
	</div>
	<div class="box_15">
		<p class="box_15-1">
			<s:property value="jobs[0].jobstheme" />
		</p>
		<p class="box_15-2">
			<s:property value="jobs[0].jobstime" />
		</p>
		<c:forEach items="${jobs}" var="i">
			<div class="content_6">
			<p class="content_5-1">
				${i.jobsrequirements}
				${i.number}
			</p>
			<p class="content_5-2">
				${i.daptinfo}
			</p>
			<p class="content_5-3">
				${i.jobslocation}
			</p>
		</div>
		</c:forEach>
		<%-- <div class="content_5">
			<p class="content_5-1">
				<s:property value="jobs[0].jobsrequirements" />
				&nbsp;&nbsp;
				<s:property value="jobs[0].number" />
			</p>
			<p class="content_5-2">
				<s:property value="jobs[0].daptinfo" />
			</p>
			<p class="content_5-3">
				<s:property value="jobs[0].jobslocation" />
			</p>
		</div>
		<div class="content_6">
			<p class="content_5-1">
				<s:property value="jobs[1].jobsrequirements" />
				&nbsp;&nbsp;
				<s:property value="jobs[1].number" />
			</p>
			<p class="content_5-2">
				<s:property value="jobs[1].daptinfo" />
			</p>
			<p class="content_5-3">
				<s:property value="jobs[1].jobslocation" />
			</p>
		</div>
		<div class="content_6">
			<p class="content_5-1">
				<s:property value="jobs[2].jobsrequirements" />
				&nbsp;&nbsp;
				<s:property value="jobs[2].number" />
			</p>
			<p class="content_5-2">
				<s:property value="jobs[2].daptinfo" />
			</p>
			<p class="content_5-3">
				<s:property value="jobs[2].jobslocation" />
			</p>
		</div>
		<div class="content_6">
			<p class="content_5-1">
				<s:property value="jobs[3].jobsrequirements" />
				&nbsp;&nbsp;
				<s:property value="jobs[3].number" />
			</p>
			<p class="content_5-2">
				<s:property value="jobs[3].daptinfo" />
			</p>
			<p class="content_5-3">
				<s:property value="jobs[3].jobslocation" />
			</p>
		</div>
		<div class="content_6">
			<p class="content_5-1">
				<s:property value="jobs[4].jobsrequirements" />
				&nbsp;&nbsp;
				<s:property value="jobs[4].number" />
			</p>
			<p class="content_5-2">
				<s:property value="jobs[4].daptinfo" />
			</p>
			<p class="content_5-3">
				<s:property value="jobs[4].jobslocation" />
			</p>
		</div>
		<div class="content_6">
			<p class="content_5-1">
				<s:property value="jobs[5].jobsrequirements" />
				&nbsp;&nbsp;
				<s:property value="jobs[5].number" />
			</p>
			<p class="content_5-2">
				<s:property value="jobs[5].daptinfo" />
			</p>
			<p class="content_5-3">
				<s:property value="jobs[5].jobslocation" />
			</p>
		</div>
		<div class="content_6">
			<p class="content_5-1">
				<s:property value="jobs[6].jobsrequirements" />
				&nbsp;&nbsp;
				<s:property value="jobs[6].number" />
			</p>
			<p class="content_5-2">
				<s:property value="jobs[6].daptinfo" />
			</p>
			<p class="content_5-3">
				<s:property value="jobs[6].jobslocation" />
			</p>
		</div>
		<div class="content_6">
			<p class="content_5-1">
				<s:property value="jobs[7].jobsrequirements" />
				&nbsp;&nbsp;
				<s:property value="jobs[7].number" />
			</p>
			<p class="content_5-2">
				<s:property value="jobs[7].daptinfo" />
			</p>
			<p class="content_5-3">
				<s:property value="jobs[7].jobslocation" />
			</p>
		</div> --%>
	</div>
	<!--box_15结束-->
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
</body>
<script type="text/javascript" src="jq/jquery-3.3.1.js"></script>
<%-- <script type="text/javascript" src="jq/J.js"></script> --%>
</html>