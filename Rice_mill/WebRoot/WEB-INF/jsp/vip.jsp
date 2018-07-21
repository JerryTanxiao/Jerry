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
	<title>服务咨询</title>
	<link rel="stylesheet" type="text/css" href="<%=basePath%>/css/cy.css">
	<style type="text/css">
	table,tr,th,td{
		border-top: solid white 2px;
		border-bottom: solid white 2px;
		border-collapse: collapse;
	}
	tr{
		width: 100%;
		height: 30px;
	}
	th,td{
		width: 25%;
		height: 40px;
		text-align: center;
	}
	.trcolor1{
		background-color: #F5F5F5;
	}
	.trcolor2{
		background-color: #F8F8FF;
	}
	.two_div3 a {font-size:16px;} 
	.two_div3 a:link {color: blue; text-decoration:none;} /* 未访问：蓝色、无下划线  */
	.two_div3 a:active:{color: red; } /* 激活：红色 */ 
	.two_div3 a:visited {color:purple;text-decoration:none;} /* 已访问：紫色、无下划线  */
	.two_div3 a:hover {color: red; text-decoration:underline;} /* 鼠标移近：红色、下划线 */
	</style>
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
					<img src="<%=basePath%>/images/seven.png">
					<span>会员</span><span style="color: #0D856A;">信息</span>
				</p>
				<p class="two_div1_p2">您的位置 ：<a href="index.do">首页</a>&gt;<span style="color: #0D856A;">会员中心</span></p>
			</div>
			<!-- 下面部分 -->
			<div class="two_div2">
				<ul class="ul1">
					<li>
						<a id="a1a" href="vip.do">
							<span class="ul1_li1_span1">会员资料</span>
							<span class="ul1_li1_span2">&gt;</span>
						</a>
					</li>
					<li>
						<a id="a2a" href="vip2.do">
							<span class="ul1_li1_span1">会员消费</span>
							<span class="ul1_li1_span2">&gt;</span>
						</a>
					</li>
					<li style="margin-bottom:70px;">
						<a id="a3a" href="vip3.do">
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
							<p>成都市锦江区牛市口266号 </p>
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
				<p class="p1">会员资料</p>	
				<div class="seven_div1">
					<p>亲爱的顾客，我是JJ机器人小T，这里可提交上传您的基本信息，完善个人信息有利于更好的联系到您呢，呵呵呵呵。</p>
					<form>
						<div style="margin-top:23px;">
							<span>会员名称</span>
							<input type="text" id="name" placeholder="${sessionScope.user.username }" required="required"/>
						</div>
						<div>
							<span>联系方式</span>
							<input type="text" id="phone" placeholder="固话/手机号" required="required"/>
						</div>
						<div>
							<span>会员等级</span>
							<input type="text" value="青铜弱鸡" readonly="readonly"/>
						</div>
						<input class="input1" type="submit" value="提交">	
					</form>
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
		$("#a1a").on("click",function(e){
			e.preventDefault();
			var url=this.href;
			$(".two_div3 *").remove();                          
			$(".two_div3").load(url + " .two_div3").fadeIn("slow");
		});
		$("#a2a").on("click",function(e){
			e.preventDefault();
			var url=this.href;
			$.ajaxSetup({  
    			async : false //取消异步  
			}); 
			$.get("vip2Data.do",function(data,status,xhr){});
			$(".two_div3 *").remove();                          
			$(".two_div3").load(url + " .two_div3").fadeIn("slow");
		});
		$("#a3a").on("click",function(e){
			e.preventDefault();
			var url=this.href;
			$.ajaxSetup({  
    			async : false //取消异步  
			}); 
			$.get("vip3Data.do",function(data,status,xhr){});
			$(".two_div3 *").remove();                          
			$(".two_div3").load(url + " .two_div3").fadeIn("slow");
		});
	});
	function page(page){
		if(page<=0){
			return false;
		}
		if(page>$("#gongji").text()){
			page=$("#gongji").text();
		}
		var url=$("#a2a").attr("href");
		$.ajaxSetup({  
    		async : false //取消异步  
		}); 
		$.get("vip2Data.do?pageNum="+page,function(data,status,xhr){});
		$(".two_div3 *").remove();                          
		$(".two_div3").load(url + " .two_div3").fadeIn("slow");
	}
	$("form").submit(function(){
		var exist=false;
		var member={
			"mName":$("#name").val(),
			"mPhone":$("#phone").val()
		};
		$.ajax({
			url : 'isUpdateMemberYes.do',
			type : 'post',
			data : JSON.stringify(member),
			dataType : 'json',
			async : false,
			contentType : 'application/json',
			success : function(data) {
				if(data){
					exist=data;
					alert("提交成功！");					
				}else{
					alert("提交失败！");
				}
			}
		});
		return exist;
	});
</script>
</html>