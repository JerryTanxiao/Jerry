<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>	
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>404ERROR</title>
<body class="body-bg">
	<div class="main">
		<p class="title">非常抱歉，您要查看的页面没有办法找到</p>
		<a href="<%=basePath %>index.do" class="btn">返回网站首页</a>
	</div>
</body>
<style>
html, body, head, div, p, a {
	margin: 0;
	padding: 0;
}

.body-bg {
	background-color: #dff1f4;
}

.main {
	width: 700px;
	overflow: hidden;
	height: 542px;
	margin: 20px auto;
	background: url(/Good_Products_Shop_Management/img/error-bg.png) no-repeat 0 0;
}

.title {
	font-size: 14px;
	font-weight: bold;
	margin: 254px 0 0 218px;
	color: #d3d3d3;
}

.btn {
	display: block;
	background: url(/Good_Products_Shop_Management/img/error-btn.png) no-repeat 0 0;
	width: 145px;
	height: 45px;
	font-size: 14px;
	margin: 95px 0 0 270px;
	line-height: 43px;
	color: #fff;
	font-weight: bold;
	text-align: center;
	text-decoration: none;
}
</style>
</html>