<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	html,body{
		width: 100%;
		height: 100%;
	}
	caption{
		font-size: 3em;
		font-weight: bold;
	}
	tr{
		height: 50px;
	}
	td{
		text-align: center;
	}
</style>
</head>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.4.4.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.easyui.min.1.2.2.js"></script>
<body>
	<div style="margin: 0 auto; width:400px; background-color: #DDDDDD">
		<table style="margin: 0 auto;">
			<caption>修改用户</caption>
			<tr><td>ID：</td><td><input type="text" id="id" value="<%=request.getAttribute("id") %>" readonly="readonly" style="background-color: #dddddd"/></td></tr>
			<tr><td>用户名：</td><td><input type="text" id="username"/></td></tr>
			<tr><td>手机号：</td><td><input type="text" id="mobile"/></td></tr>
			<tr><td>电子邮箱：</td><td><input type="text" id="email"/></td></tr>
			<tr><td>选择角色：</td><td><select style="width: 150px;"></select></td></tr>
			<tr><td><input id="update" type="button" value="修改"/></td><td><input id="return" type="button" value="返回"/></td></tr>
		</table>
	</div>
</body>
<script>
	$(function(){
		$.ajax({
			url : 'getAllRole.do',
			type: 'post',
			dataType : 'json',
			async:false,
			contentType : 'application/json',
			success:function(data){
				$("select option").remove();
				var str=""; 
				for(x in data){
					if(typeof(data[x])=="object"){
						for(y in data[x]){
							if(y=="roleName"){
								str+="<option id='"+data[x]['roleId']+"'>"+data[x][y]+"</option>";
							}
						}
					}
				}
				$("select").append(str);
			}
		});
	});
	$("#return").click(function(){
		location.href = 'goUser.do';
	});
	
	$("#update").click(function(){
		var username=$("#username").val();
		if(username==""){
			alert("请填写用户名！");
			return false;
		}
		var user = {
			"id" : $("#id").val(),
		  	"username" : $("#username").val(),
		  	"mobile" :  $("#mobile").val(),
		  	"email" :  $("#email").val(),
		}
		var role = {
		  	"roleId" : $("select option:checked").attr("id")
		}
		var uar={
			"user_id":user,
			"role_id":role
		}
		$.ajax({
			url : 'updateUser.do',
			type: 'post',
			dataType : 'json',
			async:false,
			data : JSON.stringify(uar),
			contentType : 'application/json',
			success:function(data){
				if(data){
					alert("修改成功！");
					location.href = 'goUser.do';				
				}else{
					alert("修改失败！");
				}
			}
		});
	});
</script>
</html>