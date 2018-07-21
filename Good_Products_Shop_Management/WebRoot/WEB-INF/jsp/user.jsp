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
	table,thead,tbody,tfoot,tr,th,td{
		border: solid black 1px; 
		border-collapse: collapse;
	}
	caption{
		font-size: 3em;
		font-weight: bold;
	}
	th,td{
		width: 100px;
		height: 20px;
		text-align: center;
	}
	.cz{
		width: 500px;
		height: 20px;
	}
	tbody tr td input{
		width: 97%;
		height: 100%;
	}
	.wbk{
		 border:1px #FFFFFF solid;
		 text-align: center;
	}
	.qt{
		width: 100%;
		height: 100%;
		background-color: #00BFFF;
		border:1px #FFFFFF solid;
	}
	select{
		width: 100%;
		height: 100%;
	}
</style>
</head>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.4.4.min.js"></script>
<body>
	<div>
		<table style="margin: 0 auto;">
			<caption>用户管理</caption>
			<thead>
				<tr>
					<th>----------</th>
					<th><select><option>无条件</option><option>按ID</option><option>按名称</option><option>按角色</option><option>按权限</option></select></th>
					<th colspan="2" class="cz"><input type="text" placeholder="请输入查询" style="width: 99%; height: 100% ; border:1px #FFFFFF solid;"/></th>
					<th><input class="qt" type="button" value="查找"/></th>
				</tr>
				<tr>
					<th>ID</th>
					<th>名称</th>
					<th>权限</th>
					<th>角色</th>
					<th>操作</th>
				</tr>
			</thead>
			<tbody></tbody>
			<tfoot>
				<tr>
					<td colspan="2"><input id="tianjia" class="qt" type="button" value="添加"/></td>
					<td colspan="2"><input id="baocun" class="qt" type="button" value="保存"/></td>
					<td><input id="shuaxin" class="qt" type="button" value="刷新"/></td>
				</tr>
			</tfoot>
		</table>
	</div>
</body>
<script>
	$(function(){
		var maxid=0;
		var kong=true;
		$.ajax({
			url : 'shop/getAdmin.do',
		  	type: 'post',
		  	dataType : 'json',
		  	async:false,
		  	contentType : 'application/json',
		  	success:function(data){
		  		var quanxian="<select disabled='disabled'><option>无条件</option><option>按ID</option><option>按名称</option><option>按角色</option><option>按权限</option></select>";
		  		var str="";
			  	for(x in data){
			  		str+="<tr>";
			  		for(y in data[x]){
			  			if(y=="admin_id"){
			  				maxid=data[x][y];
			  				str+="<td id='td+"+maxid+"'>"+data[x][y]+"</td>";
			  			}else if(y=="admin_username"){
			  				str+="<td>"+"<input id='user"+maxid+"' type='text' value='"+data[x][y]+"' readonly='readonly' class='wbk'/>"+"</td>";			  			
			  			}else if(y=="admin_level"){
			  				str+="<td>"+"<select class='select"+maxid+"' disabled='disabled'><option>"+data[x][y]+"</option><option>1</option><option>2</option><option>3</option><option>4</option></select>"+"</td>";			  			
			  			}else{			  				
			  				str+="<td>"+"<select class='select"+maxid+"' disabled='disabled'><option>"+data[x][y]+"</option><option>商品管理</option><option>财务管理</option><option>部门管理</option><option>员工管理</option></select>"+"</td>";			  			
			  			}
			  		}
			  		str+="<td><a id='bja"+maxid+"' onclick='bianji("+maxid+")' href='#'>编辑</a>/<a id='sca"+maxid+"' onclick='shanchu("+maxid+")' href='#'>删除</a></td></tr>";
			  	}
			  	$("tbody").append(str);
			}
		});
		$("#tianjia").click(function(){
			if(kong){
				var str="<tr><td>默认</td>"
						+"<td><input id='newname' type='text' class='wbk'/></td>"
						+"<td><select id='newlevel'><option>4</option><option>3</option><option>2</option><option>1</option></select></td>"
						+"<td><select id='newrole'><option>商品管理</option><option>财务管理</option><option>部门管理</option><option>员工管理</option></select></td>"
						+"<td id='idts'>----------</td></tr>";
				$("tbody").append(str);			
				$("#tianjia").val("取消");
				kong=false;			
			}else{
				$("tbody tr:last").remove();
				$("#tianjia").val("添加");
				kong=true;
			}
		});
		$("#baocun").click(function(){
			if($("#newname").val()==""||$("#newname").val()==null){
				$("#idts").text("用户名不能为空").css("color","red");
				return false;
			}
			var admin = {
		  		"admin_username" : $("#newname").val(),
		  		"admin_password" : "123456",
		  		"admin_level" : $("#newlevel option:selected").val(),
		  		"admin_role" : $("#newrole option:selected").val(),
		  	}
			$.ajax({
				url : 'shop/saveAdmin.do',
			  	type: 'post',
			  	dataType : 'json',
			  	async:false,
			  	data : JSON.stringify(admin),
			  	contentType : 'application/json',
			  	success:function(data){
			  		if(data){
			  			location.reload();
			  		}
			  	}
		  	});
		});
		$("#shuaxin").click(function(){
			location.reload();
		});
	});
	function shanchu(id){
		$.ajax({
			url : 'shop/deleteAdmin.do',
			type: 'post',
			dataType : 'json',
			async:false,
			data : JSON.stringify(id),
			contentType : 'application/json',
			success:function(data){
				if(data){
			  		location.reload();
			  	}
			}
		});
	}
	function bianji(id){
		if($("#bja"+id).text()=="编辑"){
			$("#user"+id).attr("readonly",false);
			$("#user"+id).val("");
			$(".select"+id).attr("disabled",false);
			$("#bja"+id).text("保存");
		}else{
			if($("#user"+id).val()==""||$("#user"+id).val()==null){
				alert("用户名不能为空！");
				return false;
			}
			var admin = {
				"admin_id":id,
		  		"admin_username" : $("#user"+id).val(),
		  		"admin_level" : $(".select"+id+":first option:selected").val(),
		  		"admin_role" : $(".select"+id+":last option:selected").val(),
		  	}
			$.ajax({
				url : 'shop/updateAdmin2.do',
				type: 'post',
				dataType : 'json',
				async:false,
				data : JSON.stringify(admin),
				contentType : 'application/json',
				success:function(data){
					if(data){
				  		location.reload();
				  	}
				}
			});
		}	
	}
</script>
</html>