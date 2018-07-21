<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
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
		width: 70px;
		height: 20px;
		text-align: center;
	}
	.nr{
		width: 800px;
		height: 20px;
	}
	.aa{
		width: 200px;
		height: 20px;
	}
</style>
</head>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.4.4.min.js"></script>
<body>
	<div>
		<table style="margin: 0 auto;">
			<caption>系统日志</caption>
			<thead>
				<tr>
					<th>ID</th>
					<th>操作用户</th>
					<th class="aa">操作时间</th>
					<th class="aa">IP地址</th>
					<th>操作类型</th>
					<th class="nr">操作内容</th>
					<th class="aa">备注</th>
				</tr>
			</thead>
			<tbody></tbody>
			<tfoot>
				<tr>
					<td colspan="7">打不过我吧，没有办法我就是那么强大！！！哈哈哈哈哈！！！！</td>
				</tr>
			</tfoot>
		</table>	
	</div>
</body>
<script>
	$(function(){
		$.ajax({
			url : 'manage/log.do',
		  	type: 'post',
		  	dataType : 'json',
		  	async:false,
		  	contentType : 'application/json',
		  	success:function(data){
		  		var str="";
			  	for(x in data){
			  		str+="<tr>";
			  		for(y in data[x]){
			  			str+="<td>"+data[x][y]+"</td>";			  			
			  		}
			  		str+="</tr>";
			  	}
			  	$("tbody").append(str);
			}
		});
	});
</script>
</html>