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
<title>登录界面</title>
<link rel="stylesheet" href="<%=basePath%>css/reset.css" />
<link rel="stylesheet" href="<%=basePath%>css/common.css" />
<link rel="stylesheet" href="<%=basePath%>css/font-awesome.min.css" />
</head>
<body>
	<div class="wrap login_wrap">
		<div class="content">
			<div class="logo"></div>
			<div class="login_box">
				<div class="login_form">
					<div class="login_title">登录</div>
					<form method="post">
						<div class="form_text_ipt">
							<input name="username" type="text" id="uname" placeholder="手机号/邮箱">
						</div>
						<div class="ececk_warning">
							<span>手机号/邮箱不能为空</span>
						</div>
						<div class="form_text_ipt">
							<input name="password" type="password" class="upassword" placeholder="密码">
						</div>
						<div class="ececk_warning">
							<span>密码不能为空</span>
						</div>
						<div class="form_check_ipt">
							<div class="left check_left">
								<label><input name="" type="checkbox"> 下次自动登录</label>
							</div>
							<div class="right check_right">
								<a href="#">忘记密码</a>
							</div>
						</div>
						<div class="form_btn">
							<button type="button">登录</button>
						</div>
						<div class="form_reg_btn">
							<span>还没有帐号？</span><a href="register.do">马上注册</a>
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
	<div style="text-align:center;"></div>
</body>
<script type="text/javascript" src="<%=basePath%>js/jquery.min.js"></script>
<script type="text/javascript" src="<%=basePath%>js/common.js"></script>
<script type="text/javascript">
	$(".login_form *").keydown(function() {//给输入框绑定按键事件
        if(event.keyCode == "13") {//判断如果按下的是回车键则执行下面的代码
            $(".form_btn button").click();
            return false;
        }
    });
	$(".form_btn button").click(function(){
		var exist=false;
		var username=$("#uname").val();
		var password=$(".upassword").val();
		if(username==""){
			$(".ececk_warning:first").css("display","block");
			return false;
		}
		if(password==""){
			$(".ececk_warning:last").css("display","block");
			return false;
		}
		var user = {
			"username" : $("#uname").val(),
			"password" : $(".upassword").val()
		}
		$.ajax({
			url : 'loginVerify.do',
			type : 'post',
			data : JSON.stringify(user),
			dataType : 'json',
			async : false,
			contentType : 'application/json',
			success : function(data) {
				if(data){
					location.href="index.do";
				}else
				{
					alert("用户名或密码错误");
				}
				exist=data;
			}
		});
		return exist;
	})
</script>
</html>
