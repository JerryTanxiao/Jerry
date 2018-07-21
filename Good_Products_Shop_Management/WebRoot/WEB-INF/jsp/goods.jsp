<%@page import="com.Shop.util.PageResult"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
	</head>
	<body>
		<table style="border: cadetblue 1px solid; margin: 0 auto;" cellpadding="0" cellspacing="0" >
			<tr>	
				<td colspan="2">
				<select>
				<option value="" style="color:blue;">-----------</option>
				<option value="goodsname" style="color:blue;">商品名称</option>
				<option value="goodsTypename" style="color:blue;">商品类型</option>
				</select>
				</td>
				<td colspan="5"><input type="text" placeholder="请输入内容" class="s1"/></td>
				<td><input type="button" value="添加"  onclick="location.href='update.do'"></td>
				<td><input type="button" value="删除"/></td>
				<td><input type="button" value="修改"/></td>
				<td><input type="button" value="查询" class="bt3" onclick="aa(1)"/></td>
			</tr>
			<tr id="tt">
				<td>选择</td>
				<td>商品编号</td>
				<td>商品名称</td>
				<td>商品图片</td>
				<td>商品价格</td>
				<td>上架时间</td>
				<td>销售数量</td>
				<td>类型编号</td>
				<td>商品类型</td>
				<td>类型图片</td>
				<td>-----</td>
			</tr>
				<c:forEach items="${page.listData}" var="i">
					<tr class="rm">
						<td><input type="checkbox" style="width: 20px;"/></td>
						<td>${i.id}</td>
						<td>${i.goodsname}</td>
						<td>${i.goodsimage}</td>
						<td>${i.goodsprice}</td>
						<td>${i.goodstime}</td>
						<td>${i.goodsnumbersales}</td>
						<td>${i.goodsType.id}</td>
						<td>${i.goodsType.name}</td>
						<td>${i.goodsType.image}</td>
						<td><a href="update.do?id=${i.id}">编辑</a>/<a href="delete.do?id=${i.id}">删除</a></td>
					</tr> 
				</c:forEach>
				<tr class="rm">
					<td colspan="11"><a href="good.do?currentPage=1">首页</a>
		  			<a href="good.do?currentPage=${page.perPage}">上一页</a>
		  			<%
		  				for(int i=1 ; i<= ((PageResult)request.getAttribute("page")).getTotalPage();i++){
		  			%>
		  				<a href="good.do?currentPage=<%=i%>"><%=i%></a>
		  			 <% }%>
		  			<a href="good.do?currentPage=${page.nextPage}">下一页</a>
		  			<a href="good.do?currentPage=${page.totalPage}">尾页</a>
		  			总条数：${page.totalCount} 当前页:${page.currentPage}/${page.totalPage}
		  			</td>
	  			</tr>
		</table>
		<p class='pp' style="margin:  0  auto; text-align: center;"></p>
	</body>
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.4.4.min.js"></script>
	<script type="text/javascript">
	  $("select option:selected").click(function(){
	 	 var	type=$("select option:selected").val();
	  alert(type)
	  })
	 	/* $(".bt3").click(function(id){ */
	 	function aa(currentPage){
	 	var	type=$("select").val()
	 	if($(".s1").val().trim()==""){
	 		alert("你没有输入任何内容")
	 		$(".s1").focus();
	 	}else{
	 	 	var name=$(".s1").val().trim();
	 	 	var page={
	 	 	"name": name.trim(),
	 	 	"currentPage": currentPage,
	 	 	"type" :type.trim()
	 	 	}
	 	$.ajax({
  			url : 'selectgoods.do',
  			type: 'post',
  			dataType : 'json',
  			data :JSON.stringify(page),
  			async:false,
  			contentType : 'application/json', 
  			success:function(data){
  			if(data==null){
  				$(".pp").html("没有搜到你要查询的结果").css("color","red")
  			}else{
  				$(".pp").html("一共找到"+data.totalCount+"条数据").css("color","green")
  			}
  			var str="";
 			$(".rm").remove();
 			$(".rm1").remove();
  			console.info(data)
  			for(x in data){
  				for(y in data[x]){
  					str+="<tr class='rm1'><td><input type='checkbox' style='width: 20px;'/>"+
  						 "</td><td>"+data[x][y].id+"</td>"+
  						 "<td>"+data[x][y].goodsname+"</td>"+
  						 "<td>"+data[x][y].goodsimage+"</td>"+
  						 "<td>"+data[x][y].goodsprice+"</td>"+
  						 "<td>"+data[x][y].goodstime+"</td>"+
  						 "<td>"+data[x][y].goodsnumbersales+"</td>"+
  						 "<td>"+data[x][y].gid+"</td>"+
  						 "<td>"+data[x][y].name+"</td>"+
  						 "<td>"+data[x][y].image+"</td>"+
  						 "<td><a href='update.do?id="+data[x][y].id+"'>编辑</a>/<a href='#'>删除</a></td></tr>"
  				}
  			}
  			str+="<tr class='rm1'><td colspan='11'><a href='#' onclick='aa(1)'>首页</a>"
  				+"<a href='#' onclick='aa("+data.perPage+")' '>上一页</a>"
		  			for(var i = 1 ; i <= data.totalPage ; i++){
		  				str += "<a href='#' onclick='aa("+i+")'>" + i + "</a>";
		  			}
		  			str += "<a href='#' onclick='aa("+data.nextPage+")' '>下一页</a>"+
		  			"<a href='#' onclick='aa("+data.totalPage+")' '>尾页</a>"+
		  			"总条数："+data.totalCount+"当前页: "+data.currentPage+"/"+data.totalPage+"</td></tr>";
  					$("#tt").after(str);
  			},
  			error:function(data){
  				alert("status : "+data.status)
  			}
  		})
	 	}
 	}
	</script>
 <style>
 	.pp{
 		font-size: 1.5em;
 	}
 	a{
 	text-decoration:none;
 	}
 	a:visited
	{
	background-color:red;
	}
	table tr td{
		border: 1px solid black;
		text-align: center;
		font-size: 1.5em;
		
	}
	input {
	font-size:1em;
	border: 0px;
	height: 50px;
	width: 100%;
}
select {
	border: 0px;
	height: 50px;
	width: 100%;
	font-size:1em;
	text-align: center;
}
</style>
</html>