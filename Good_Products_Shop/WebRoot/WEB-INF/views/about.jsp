<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
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
		<title>关于我们</title>
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
				<li class="on_1"><a href="#">关于良品铺子</a></li>
				<li class="nav_1-3" style="margin-left:72px"><a href="<%=res.getString("product")%>">产品中心</a></li>
				<li class="nav_1-4"><a href="#">新闻中心</a></li>
				<li class="nav_1-5"><a href="<%=res.getString("brand")%>">品牌加盟</a></li>
				<li class="nav_1-6"><a href="<%=res.getString("advertise")%>">企业招聘</a></li>
				<li class="nav_1-7"><a href="<%=res.getString("connect")%>">联系我们</a></li>
			</ul>
		</div>
	</div>
	<!-- header结束 -->
<div class="banner_1">
	<a href="#"></a>
	<div class="focus_1">
               <a href="<%=res.getString("index")%>"></a>
               <a href="#" class="on_6"></a>
               <a href="<%=res.getString("product")%>"></a>
               <a href="#"></a>
               <a href="<%=res.getString("brand")%>"></a>
               <a href="<%=res.getString("advertise")%>"></a>
               <a href="<%=res.getString("connect")%>"></a>
    </div>
</div>
<!--banner_1结束-->
<div class="box_8">
            <div class="title_3">
            	    <p class="title_3-1">企业简介</p>
            	    <div class="square_1"></div>
            	    <p class="title_3-2">LEARN &nbsp;MORE &nbsp;ABOUT&nbsp;LIANGPINPIZI</p>
            	    <ul class="nav_5 fl">
            	    	  <li class="on_2"><a href="#">企业简介</a></li>
            	    	  <li class="nav_5-2"><a href="#">企业文化</a></li>
            	    	  <li><a href="#">企业历程</a></li>
            	    </ul>
            </div> 
            <div class="box_8-bottom">
            	  <div class="pic_5 fl"><a href="#"><img src="images/<s:property value="shop[0].shopimage"/>"></a></div>
            	  <div class="word_5 fr">
            	  	      <p class="word_5-1"><span><s:property value="shop[0].shopname.substring(0,5)"/></span><s:property value="shop[0].shopname.substring(5)"/></p>
            	  	      <p class="word_5-2"><s:property value="shop[0].shophistory"/></p>
            	  </div>
            </div>
</div>
<!--box_8结束-->
<div class="box_9">
	   <div class="content_4">
	   	      <dl class="one-9 fl">
	   	      	    <dt><a href="#"><img src="images/<s:property value="shop[1].shopimage"/>"></a></dt>
	   	      	    <dd><s:property value="shop[1].shopname"/></dd>
	   	      </dl>
	   	      <dl class="one-10 fl">
	   	      	    <dt><a href="#"><img src="images/<s:property value="shop[2].shopimage"/>"></a></dt>
	   	      	    <dd><s:property value="shop[2].shopname"/></dd>
	   	      </dl>
	   	      <dl class="one-11 fl">
	   	      	    <dt><a href="#"><img src="images/<s:property value="shop[3].shopimage"/>"></a></dt>
	   	      	    <dd><s:property value="shop[3].shopname"/></dd>
	   	      </dl>
	   	     <dl class="one-12 fl">
	   	      	    <dt><a href="#"><img src="images/<s:property value="shop[4].shopimage"/>"></a></dt>
	   	      	    <dd><s:property value="shop[4].shopname"/></dd>
	   	      </dl>
	   </div>	
</div>
<!--box_9结束-->
<div class="box_10">
	  <div class="word_6 fl">
            	  	      <p class="same_1"><span><s:property value="shop[5].shopname.substring(0,4)"/></span><s:property value="shop[5].shopname.substring(4)"/></p>
            	  	      <p class="same_2"><s:property value="shop[5].shophistory"/>
                          </p>
     </div>
     <div class="pic_6 fr"><img src="images/<s:property value="shop[5].shopimage"/>"></div>
     <div class="pic_7 fl"><img src="images/<s:property value="shop[6].shopimage"/>"></div>
     <div class="word_6 fr">
            	  	      <p class="same_1"><span><s:property value="shop[6].shopname.substring(0,5)"/></span><s:property value="shop[6].shopname.substring(5)"/></p>
            	  	      <p class="same_2"><s:property value="shop[6].shophistory"/>
                           </p>
     </div>
    <div class="word_6 fl word_7">
            	  	      <p class="same_1"><span><s:property value="shop[7].shopname.substring(0,4)"/></span><s:property value="shop[7].shopname.substring(4)"/></p>
            	  	      <p class="same_2"><s:property value="shop[7].shophistory"/>
                           </p>
     </div>
     <div class="pic_8 fr"><img src="images/<s:property value="shop[7].shopimage"/>"></div>  
</div>
<!--div_10结束-->
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
</body>
<script type="text/javascript" src="jq/jquery-3.3.1.js"></script>
<%-- <script type="text/javascript" src="jq/J.js"></script> --%>
</html>