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
	table,tr,th,td{
		border-top: solid white 1px;
		border-bottom: solid white 1px;
		border-collapse: collapse;
	}
	caption{
		font-size: 3em;
		font-weight: bold;
	}
	tr{
		width: 100%;
		height: 50px;
	}
	th,td{
		width: 400px;
		height: 50px;
		text-align: center;
	}
	.trcolor1{
		background-color: #CCDDFF;
	}
	.trcolor2{
		background-color: #F0F8FF;
	}
	#page{
		width: 20px;
		height:20px;
		text-align: center;
		font-size: 16px;
	}
	a {font-size:16px} 
	a:link {color: blue; text-decoration:none;} /* 未访问：蓝色、无下划线  */
	a:active:{color: red; } /* 激活：红色 */ 
	a:visited {color:purple;text-decoration:none;} /* 已访问：紫色、无下划线  */
	a:hover {color: red; text-decoration:underline;} /* 鼠标移近：红色、下划线 */
</style>
</head>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.4.4.min.js"></script>
<body>
	<div>
		<table style="margin: 0 auto;">
			<caption>角色管理</caption>
			<thead>
				<tr>
					<th colspan="4" style="text-align: left;">
						<select id="selectquery">
							<option>根据名称</option>
							<option>根据ID</option>
						</select> 
						<input type="text" placeholder="请输入名称" id="querytext"/>
						<input type="button" value="查找" id="querybutton"/>
						<input type="button" value="添加" id="addbutton"/>
					</th>
				</tr>
				<tr class="trcolor1">
					<th>ID</th>
					<th>角色名</th>
					<th>角色描述</th>
					<th>操作</th>
				</tr>
			</thead>
			<tbody>
			</tbody>
			<tfoot>
				<tr class="trcolor1">
					<td>
					
					</td>
					<td colspan="2">
						<a href="#" id="first">首页</a> 
						<a href="#" id="per">上一页</a> 
						<input type="text" id="page"/>/<span id="totalpage"></span>
						<a href="#" id="next">下一页</a> 
						<a href="#" id="last">尾页</a> 
					</td>
					<td>
						共<span id="totalcount"></span>条记录
					</td>
				</tr>
			</tfoot>
		</table>
	</div>
</body>
<script>
	var pages = {
		"first":0,
		"per":0,
		"next":0,
		"last":0
	}
	$(function(){
		paging(0);
	});
	$("#addbutton").click(function(){
		location.href = 'goAdd.do';
	});
	$("a").click(function(){
		var id = $(this).attr("id");
		if(id=="first"){
			paging(pages.first);
		}else if(id=="per"){
			paging(pages.per);
		}else if(id=="next"){
			paging(pages.next);
		}else if(id=="last"){
			paging(pages.last);
		}else{
			alert("不好意思，出错了！");
		}
	});
	$("#page").keydown(function() {//给输入框绑定按键事件
        if(event.keyCode == "13") {//判断如果按下的是回车键则执行下面的代码
        	var page=$(this).val()<=pages.last?$(this).val():pages.last;
            paging(page);
        }
    });
    function update(num){
    	var id = $("#role"+num+" td:first").text();
	    location.href = "goUpdate.do?id="+id;
    }
    /* function del(num){
    	var id = $("#role"+num+" td:first").text();
    	$.ajax({
			url : 'recoveryUser.do',
		  	type: 'post',
		  	data : JSON.stringify(id),
		  	dataType : 'json',
		  	async:false,
		  	contentType : 'application/json',
		  	success:function(data){
		  		if(data){
		  			window.location.reload();
		  		}
			}
		});
    } */
	function paging(num){
		var currentPage=1;
		if(num>0){
			currentPage=num;
		}
		$.ajax({
			url : 'getPagingRole.do',
		  	type: 'post',
		  	data : JSON.stringify(currentPage),
		  	dataType : 'json',
		  	async:false,
		  	contentType : 'application/json',
		  	success:function(data){
		  		$("tbody tr").remove();
		  		var str="";
		  		for(x in data.listData){
		  			str+="<tr id='role"+data.listData[x].roleId+"' class='trcolor2'>";
		  			for(y in data.listData[x]){
		  				str+="<td>"+data.listData[x][y]+"</td>";		  				
		  			}
		  			str+="<td><button onclick='update("+data.listData[x].roleId+")'>修改</button> <button onclick='delete("+data.listData[x].roleId+")'>删除</button></td></tr>";
		  		}
		  		$("tbody").append(str);
		  		$("#totalcount").text(data.totalCount);
		  		$("#totalpage").text(data.totalPage);
		  		$("#page").val(data.currentPage);
		  		pages.first=data.beginPage;
		  		pages.last=data.totalPage;
		  		pages.next=data.nextPage;
		  		pages.per=data.perPage;
			}
		});
	}
</script>
</html>