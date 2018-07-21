<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%-- <%@ taglib uri="/struts-tags" prefix="s" %> --%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
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
		<title>联系我们</title>
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
				<li class="nav_1-7"><a href="<%=res.getString("advertise")%>">企业招聘</a></li>
				<li class="on_1" style="margin-left:72px;"><a href="#">联系我们</a></li>
			</ul>
		</div>
	</div>
	<!-- header结束 -->
<div class="banner_5">
	<a href="#"></a>
    <div class="focus_1">
               <a href="<%=res.getString("index")%>"></a>
               <a href="<%=res.getString("about")%>"></a>
               <a href="<%=res.getString("product")%>"></a>
               <a href="#"></a>
               <a href="<%=res.getString("brand")%>"></a>
               <a href="<%=res.getString("advertise")%>"></a>
               <a href="#" class="on_6"></a>
    </div>
</div>
<!--banner_5结束-->
<div class="box_16">
	<div class="title_3">
            	    <p class="title_3-1">联系我们</p>
            	    <div class="square_1"></div>
            	    <p class="title_3-2">THE&nbsp;FOLLOWING&nbsp;INFORMATION&nbsp;CAN&nbsp;BE&nbsp;CONVENIENT&nbsp;TO&nbsp;CONTACT&nbsp;US</p>
  </div>
</div>
<!--box_16结束-->
<div class="box_17">
	 <div class="box_18 fl">
	       <i></i>
	       <p class="box_18-1">公司地址</p>
	       <p class="box_18-2"><%=company.getString("address")%></p>
	       <p class="box_18-3">邮编：<%=company.getString("postalcode")%></p>
	 </div>
	  <div class="box_19 fl" style="margin-left:127px;">
	       <i></i>
	       <p class="box_18-1">联系电话</p>
	       <p class="box_18-2">电话：<%=company.getString("phone")%></p>
	       <p class="box_18-3">传真：<%=company.getString("fax")%></p>
	 </div>
	  <div class="box_20 fl" style="margin-left:127px;">
	       <i></i>
	       <p class="box_18-1">联系微信</p>
	       <p class="box_18-2">公众号：<%=company.getString("publicnum")%></p>
	       <p class="box_18-3">微信客服：<%=company.getString("wechat")%></p>
	 </div>
</div>
<!--box_17结束-->
<div class="box_21">
	  <div class="box_22 fl">
	  	<p class="box_22-1">如何到达</p>
	  	<p class="box_22-2">公交车</p>
	  	<p class="box_22-3">线路；<%=company.getString("bus")%></p> 
	  	<p class="box_22-1" style="margin-top:67px;">出租车or自驾</p>
	  	<p class="box_22-2">地点：<%=company.getString("place")%></p>
	  	<p class="box_22-3">地址：<%=company.getString("address")%></p>
      
</div>
      <iframe class="box_23 fr" src="iframe/<%=company.getString("map")%>"></iframe>
</div>
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
                            <p class="word_4-4">传真:<%=company.getString("fax")%></p>
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
</body>
</html>

