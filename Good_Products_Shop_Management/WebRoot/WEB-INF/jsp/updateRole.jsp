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
			<caption>修改角色</caption>
			<tr><td>ID：</td><td><input type="text" id="roleId" value="<%=request.getAttribute("roleId") %>" readonly="readonly" style="background-color: #dddddd"/></td></tr>
			<tr><td>角色名：</td><td><input type="text" id="roleName"/></td></tr>
			<tr><td>角色描述：</td><td><input type="text" id="roleDescribe"/></td></tr>
			<tr><td>权限设置：</td><td><a href="#">查看权限列表</a></td></tr>
			<tr id="perlist" hidden="hidden">
				<td colspan="2">
					<div style="margin: 0 auto; width:200px; background-color: #F5F5F5">
						<ul></ul>				
					</div>
				</td>
			</tr>
			<tr><td><input id="update" type="button" value="修改"/></td><td><input id="return" type="button" value="返回"/></td></tr>
		</table>
	</div>
</body>
<script>
	$(function(){
		$.ajax({
			url : 'getAllPower.do',
			type: 'post',
			dataType : 'json',
			async:false,
			contentType : 'application/json',
			success:function(data){
			 	var str=""; 
				for(x in data){
					if(typeof(data[x])=="object"){
						str+="<li><input type='checkbox' name='per' title='"+data[x]['permissionId']+"'/>"
						for(y in data[x]){
							if(y=="permissionName"){
								str+=data[x][y];
							}
						}
						str+="</li>";
					}
				}
				$("#perlist td div ul").append(str);
			}
		});
		$("#update").click(function(){
			var roleName=$("#roleName").val();
			if(roleName==""){
				alert("请填写角色名！");
				return false;
			}
			var id=$("#roleId").val();
			var role = {
				"roleId":id,
			  	"roleName" : $("#roleName").val(),
			  	"roleDescribe" :  $("#roleDescribe").val(),
			}
			var ids=new Array();
						$("input:checkbox[name='per']:checked").each(function(){
							ids.push($(this).attr("title"));
						});
			$.ajax({
				url : 'updateRole.do?ids='+ids,
				type: 'post',
				dataType : 'json',
				async:false,
				data : JSON.stringify(role),
				contentType : 'application/json',
				success:function(data){
					/* if(data){ */
						
						/* $.ajax({
							url : 'updatePerToRole.do?roleid='+id,
							type: 'post',
							dataType : 'json',
							async:false,
							data : JSON.stringify(ids),
							contentType : 'application/json',
							success:function(data){
								if(data){
									alert("修改成功!");								
									location.href = 'goRole.do';				
								}else{
									alert("修改失败！");
								}
							}
						}); */
					/* }else{
						alert("修改失败！");
					} */
				}
			});
		});
		$("a").click(function(){
			$("#perlist").toggle();
		});
	});
	$("#return").click(function(){
		location.href = 'goUser.do';
	});
</script>
</html>