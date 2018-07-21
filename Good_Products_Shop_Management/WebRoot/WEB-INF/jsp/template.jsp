<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<script type="text/javascript" src="<%=basePath %>js/jquery.js"></script>
	</head>
	<body>
		<table style="border: solid 1px beige; margin: 0 auto ; text-align: center;">
			<th>
				<td>商品管理</td>
			</th>
			<tr>
				<td>商品编号：</td>	
				<td><input value="${goods[0].id}" readonly="readonly"/></td>
			</tr>
			<tr>
				<td>商品名称：</td>	
				<td><input value="${goods[0].goodsname}"/></td>
			</tr>
			<tr>
				<td>商品图片：</td>	
				<td><input type="file" name="file" /></td>
			</tr>
			<tr>
				<td>商品类型：</td>	
				<td><input value="${goods[0].goodsname}"/></td>
			</tr>
			<tr>
				<td>商品类型图片：</td>	
				<td><input value="${goods[0].goodsimage}"/></td>
			</tr>
			<tr>
				<td><input type="submit" onclick="aa()"/></td>
				<td><input type="reset" value="清空"/></td>
			</tr>
		</table>
	</body>
	<style>
	table tr td:first-child{
		width: 30%;
	}
	table tr td:last-child{
		width: 70%;
	}
	</style>
</html>
