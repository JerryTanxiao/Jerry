<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>测试</title>
  </head>
  <body>
  <table>
  <c:forEach items="${page.listData}" var="i">
  		<tr>
  			<td>${i.jointheme}</td>
  			<td>${i.joincontent }</td>
  			<td>${i.jointime }</td>
  		</tr>	
  </c:forEach>
  	<tr>
  		<td colspan="9"><a href="<%=path %>/JoinPage?currentPage=1">首页</a>
  		<a href="<%=path %>/JoinPage?currentPage=${page.perpage}">上一页</a>
  		<a href="<%=path %>/JoinPage?currentPage=${page.nextPage}">下一页</a>
  		<a href="<%=path %>/JoinPage?currentPage=${page.totalPage}">尾页</a>
  		总条数：${page.totalcount} 当前页:${page.currentPage}/${page.totalPage}
  		</td>
  	</tr>
  </table>
  </body>
</html>