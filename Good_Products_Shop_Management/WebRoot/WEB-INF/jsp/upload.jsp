<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    <title>Insert Your Title</title>
	<meta charset="UTF-8">
  </head>
  
  <body>
  	<form action="upload" method="post" enctype="multipart/form-data" >
  		<input type="file" name="file" >
  		<br/>
  		<input type="button" value="继续加载文件" >
  		<input type="submit" value="上传">
  	</form>
  </body>
  <script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-2.2.1.min.js"></script>
  <script type="text/javascript">
  
  	$(":button").click(function(){
  		$(":file:last").after('<br/><input type="file" name="file" >');
  		
  	});
  	
  </script>
</html>