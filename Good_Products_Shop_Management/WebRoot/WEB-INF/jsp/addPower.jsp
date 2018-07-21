<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
			<caption>添加权限</caption>
			<tr><td>权限名：</td><td><input type="text" id="roleName"/></td></tr>
			<tr><td>权限描述：</td><td><input type="text" id="roleDescribe"/></td></tr>
			<tr><td>权限空间：</td><td><input type="text" id="role_id"/></td></tr>
			<tr><td><input id="save" type="button" value="保存"/></td><td><input id="return" type="button" value="返回"/></td></tr>
		</table>
	</div>
</body>
<script>
	$("#return").click(function(){
		location.href = 'goRole.do';
	});
	
	$("#save").click(function(){
		var roleName=$("#roleName").val();
		if(roleName==""){
			alert("请填写角色名！");
			return false;
		}
		var role = {
		  	"roleName" : $("#roleName").val(),
		  	"roleDescribe" :  $("#roleDescribe").val(),
		  	/* "role_id" :  $("#role_id").val(), */
		}
		$.ajax({
			url : 'addRole.do',
			type: 'post',
			dataType : 'json',
			async:false,
			data : JSON.stringify(role),
			contentType : 'application/json',
			success:function(data){
				if(data){
					alert("添加成功!");
					location.href = 'goRole.do';				
				}else{
					alert("添加失败！");
				}
			}
		});
	});
</script>
</html>