<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>注册界面</title>
<link rel="stylesheet" href="<%=basePath%>css/reset.css" />
<link rel="stylesheet" href="<%=basePath%>css/common.css" />
<link rel="stylesheet" href="<%=basePath%>css/font-awesome.min.css" />
<link rel="stylesheet" href="css/jigsaw.css">
<style>
.container {
	width: 310px;
	margin: 20px auto;
}
#msg {
	width: 100%;
	line-height: 40px;
	font-size: 14px;
	text-align: center;
}

a:link, a:visited, a:hover, a:active {
	margin-left: 100px;
	color: #0366D6;
}
</style>
</head>
<body>
	<div class="wrap login_wrap">
		<div class="content">

			<div class="logo"></div>

			<div class="login_box">

				<div class="login_form">
					<div class="login_title">注册</div>
					<form action="#" method="post">

						<div class="form_text_ipt">
							<input name="username" type="text" placeholder="手机号/邮箱">
						</div>
						<div class="ececk_warning">
							<span>手机号/邮箱不能为空</span>
						</div>
						<div class="form_text_ipt">
							<input name="password" type="password" placeholder="密码">
						</div>
						<div class="ececk_warning">
							<span>密码不能为空</span>
						</div>
						<div class="form_text_ipt">
							<input name="repassword" type="password" placeholder="重复密码">
						</div>
						<div class="ececk_warning">
							<span>重复密码不能为空</span>
						</div>
						<div class="container" >
							<div id="captcha" style="position: relative"></div>
							<div id="msg"></div>
						</div>
						<div class="form_btn" style="display: none;">
							<button type="button"  id="register1" disabled="disabled" onclick="register()">注册</button>
						</div>
						<div class="form_reg_btn">
							<span>已有帐号？</span><a href="login.do">马上登录</a>
						</div>
					</form>
					<div class="other_login">
						<div class="left other_left">
							<span>其它登录方式</span>
						</div>
						<div class="right other_right">
							<a href="#"><i class="fa fa-qq fa-2x"></i></a> <a href="#"><i
								class="fa fa-weixin fa-2x"></i></a> <a href="#"><i
								class="fa fa-weibo fa-2x"></i></a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="<%=basePath%>js/jquery.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>js/common.js"></script>
	<div style="text-align:center;"></div>
</body>
<script src="js/jigsaw.js"></script>
<script>
	function register() {
		var username=$("input[name='username']").val();
		var password=$("input[name='password']").val();
		var repassword=$("input[name='repassword']").val();
		if(username==""){
			$(".ececk_warning:eq(0)").css("display","block");
			return false;
		}
		if(password==""){
			$(".ececk_warning:eq(1)").css("display","block");
			return false;
		}
		if(repassword==""){
			$(".ececk_warning:eq(2)").css("display","block");
			return false;
		}
		if(password!=repassword){
			alert("两次密码不一致！");
			return false;
		}
		var re = /^1\d{10}$/;
		var ra=/^(\w-*\.*)+@(\w-?)+(\.\w{2,})+$/;
		if(!re.test(username)||ra.test(username)){
			alert("手机号/邮箱格式不正确！");
			return false;
		}
		var user={
		   "username":username, 
		   "password":password
		}
		$.ajax({
			url:''+JSON.stringify(user)+'/registerUser.do',
			type:'post',/* 必须和Controller层@PostMapping保持一致 */
			success:function(data){
			 if(data){
			 	location.replace("login.do");
			 }else{
			 	alert("用戶名重复！");
			 }
			}
		})
	}
	jigsaw.init({
		el : document.getElementById('captcha'),
		onSuccess : function() {
			document.getElementById('msg').innerHTML = '验证成功！';
			$(".form_btn").css("display","block");
			$("#register1").attr("disabled",false);
		},
		onFail : cleanMsg,
		onRefresh : cleanMsg
	})
	function cleanMsg() {
		document.getElementById('msg').innerHTML = '验证失败'
	}
</script>
</html>
