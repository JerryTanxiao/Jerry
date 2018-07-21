<%@ page language="java" import="java.util.*" contentType="text/html;  charset=UTF-8" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML>
<html>
	<head>
		<base href="<%=basePath%>">
		<title>良品铺子后台管理系统</title>
		<link rel="stylesheet" type="text/css" href="css/base.css" />
		<link rel="stylesheet" type="text/css" href="css/admin-all.css" />
		<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
		<script type="text/javascript" src="js/jquery.js"></script>
		<script type="text/javascript" src="js/chur.min.js"></script>
		<link rel="stylesheet" type="text/css" href="css/login.css" />
		<meta charset="utf-8" />
	</head>
	<body>
		<form action="index.do">
			<div class="row-fluid">
				<h1>良品铺子后台管理系统</h1>
				<p>
					<label>账&nbsp;&nbsp;&nbsp;号：<input type="text" id="uid" value="tom" /></label>
				</p>
				<p>
					<label>密&nbsp;&nbsp;&nbsp;码：<input type="password" id="pwd" value="tom123"/></label>
				</p>
				<p class="pcode">
					<label>验证码：<input type="text" id="code" maxlength="5" class="code"/>
						<input id="imagecode" type="button" onclick="createCode()"style="border: 0px; width: 80px; height:25px;background-color: whitesmoke;"/>
						<a href="#" onclick="createCode()">换一张</a>
					</label>
				</p>
				<p id="iip"></p>
				<p class="tip">&nbsp;</p>
				<hr/>
				<input type="submit" class="btn btn-primary btn-large login" /> &nbsp;&nbsp;&nbsp;
				<input type="button" value="取消" class="btn btn-large" />
			</div>
		</form>
	</body>
	<style type="text/css">
		#code {
			font-family: Arial;
			font-style: italic;
			font-weight: bold;
			border: 0;
			letter-spacing: 2px;
			color: blue;
		}
	</style>
	<script>
		//产生验证码 
		window.onload = function() {
			createCode();
			$("#code").val($("#imagecode").val());
		}
		var code; //在全局定义验证码 
		function createCode() {
			code = "";
			var codeLength = 4; //验证码的长度 
			var checkCode = document.getElementById("imagecode");
			var random = new Array(0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R',
				'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'); //随机数 
			for(var i = 0; i < codeLength; i++) { //循环操作 
				var index = Math.floor(Math.random() * 36); //取得随机数的索引（0~35） 
				code += random[index]; //根据索引取得随机数加到code上 
			}
			checkCode.value = code; //把code值赋给验证码 
		}
		$("#code").change(function() {
			var checkCode = $("#imagecode");
			var code = $("#code");
			if(checkCode.val().toUpperCase() != code.val().toUpperCase()) {
				$("#iip").html("验证码错误").css("color", "red");
				createCode();
				code.val("");
			} else {
				$("#iip").html("验证码正确").css("color", "green");
			}
		});
		$("form").submit(function() {
			var exist=false;
			if($("#uid").val().trim() =="" || $("#pwd").val().trim() == "") {
				$("#iip").html("用户名或者密码不能为空").css("color", "red");
				return exist;
			} else {
		  		var admin = {
		  			"username" : $("#uid").val(),
		  			"password" : $("#pwd").val()
		  		}
				$.ajax({
					url : 'login.do',
		  			type: 'post',
		  			data : {
		  				"username" : $("#uid").val(),
		  				"password" : $("#pwd").val()
		  			},
		  			dataType : 'json',
		  			async:false,
		  			success:function(data){
		  				if(data.id>0){
		  					exist=true;
		  				}else{
		  					$("#iip").html("用户名或者密码错误！").css("color", "red");
		  				}
		  			}
				});
				return exist;
			}
		})
	</script>
</html>