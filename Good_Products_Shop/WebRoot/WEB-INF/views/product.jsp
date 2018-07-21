 <%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
ResourceBundle res = ResourceBundle.getBundle("use");
ResourceBundle company = ResourceBundle.getBundle("company");
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="css/index_1.css">
<link rel="stylesheet" type="text/css" href="css/index_2.css">
<link href="ico/cat.ico" rel="shortcut icon">
	<title>产品中心</title>
</head>
<body>
<div class="header">
       <div class="header-top"></div>
       <div class="header_1">
              <div class="logo fl"><a href="<%=res.getString("lppz")%>"><img src="images/logo.png"></a></div>
              <ul class="nav_1">
                    <li class="nav_1-2" style="margin-left:0;"><a href="<%=res.getString("index")%>">首页</a></li>
                    <li class="nav_1-3"><a href="<%=res.getString("about")%>">关于良品铺子</a></li>
                    <li class="on_1" style="margin-left:72px;"><a href="#">产品中心</a></li>
                    <li class="nav_1-4"><a href="#">新闻中心</a></li>
                    <li class="nav_1-5"><a href="<%=res.getString("brand")%>">品牌加盟</a></li>
                    <li class="nav_1-6"><a href="<%=res.getString("advertise")%>">企业招聘</a></li>
                    <li class="nav_1-7"><a href="<%=res.getString("connect")%>">联系我们</a></li>
              </ul>
       </div>
</div>
<!-- header结束 -->
<div class="banner_2">
	<a href="#"></a>
		 <div class="focus_1">
               <a href="<%=res.getString("index")%>"></a>
               <a href="<%=res.getString("about")%>"></a>
               <a href="#" class="on_6"></a>
               <a href="#"></a>
               <a href="<%=res.getString("brand")%>"></a>
               <a href="<%=res.getString("advertise")%>"></a>
               <a href="<%=res.getString("connect")%>"></a>
    </div>
</div>
<!-- banner结束 -->
<div class="box_12">
	   <div class="title_3">
            	    <p class="title_3-1">产品中心</p>
            	    <div class="square_1"></div>
            	    <p class="title_3-2">LEARN &nbsp;MORE &nbsp;ABOUT&nbsp;LIANGPINPIZI</p>
            	    <ul class="nav_5 fl">
            	    	  <li class="on_2"><a href="#">新品上市</a></li>
            	    	  <li class="nav_5-2"><a href="">明星爆款</a></li>
            	    	  <li><a href="">产品汇总</a></li>
            	    </ul>
     </div> 	
</div>
<!--box_12结束-->
	<div class="box_14">
	<%-- <s:debug/> --%>
	<%int i=8;%>
		<c:forEach items="${page.listData}" var="i">
		<%if(i%2==0){%>
		<div class="pic_<%=++i%> fl"><a href="#">
		<img src="images/${i.goodsimage}"></a>
		<%}else{ %>
		<div class="pic_<%=++i%> fr"><a href="#">
		<img src="images/${i.goodsimage}"></a>
		<%}%>
		</div>
		</c:forEach>
		<%--  <div class="pic_9 fl"><a href="#"><img src="images/<s:property value="page.listData[0].goodsType.image"/>"></a></div>
	  <div class="pic_9 fl"><a href="#"><img src="images/<s:property value="page.listData[0].goodsimage"/>"></a></div>
	  <div class="pic_10 fr"><a href="#"><img src="images/<s:property value="page.listData[1].goodsimage"/>"></a></div>
	  <div class="pic_11 fl"><a href="#"><img src="images/<s:property value="page.listData[2].goodsimage"/>"></a></div>
	  <div class="pic_12 fr"><a href="#"><img src="images/<s:property value="page.listData[3].goodsimage"/>"></a></div>
	  <div class="pic_13 fl"><a href="#"><img src="images/<s:property value="page.listData[4].goodsimage"/>"></a></div>
	  <div class="pic_14 fr"><a href="#"><img src="images/<s:property value="page.listData[5].goodsimage"/>"></a></div> --%>
</div>
<!--box_13结束-->
<div class="box_11">
	   <div class="box_11-1">
	          <p class="box_11-2">树根文化</p>
	          <div class="pic_9"><img src="images/pic-2.png"></div>
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
                      <p>COPYRIGHT&nbsp;&copy;&nbsp;2011&nbsp;ZHOUHEIYA.&nbsp;ALL&nbsp;RIGHTS&nbsp;RESERVED鄂ICP&nbsp; 备07004825号&nbsp;POWERED&nbsp;BY&nbsp;JL-TECH&nbsp;京伦科技</p>
              </div>
       </div>    
</div>
<!--footer结束-->
<script type="text/javascript" src="jq/jquery-3.3.1.js"></script>
<%-- <script type="text/javascript" src="jq/J.js"></script> --%>
</body>
</html>
