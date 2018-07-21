      <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>	
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="http://www.jeasyui.com/easyui/themes/bootstrap/easyui.css">
<link rel="stylesheet" type="text/css"
	href="http://www.jeasyui.com/easyui/themes/icon.css">
<link rel="stylesheet" type="text/css"
	href="http://www.jeasyui.com/easyui/demo/demo.css">
<script type="text/javascript"
	src="http://www.jeasyui.com/easyui/jquery-1.8.0.min.js"></script>
<script type="text/javascript"
	src="http://www.jeasyui.com/easyui/jquery.easyui.min.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/easyui-lang-zh_CN.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/Loading.js"></script>
</head>
<style>
#fm {
	text-align: center;
}

#fm input {
	height: 20px;
}

#fm label {
	font-size: 1.5em;
	text-align: center;
}
</style>
<body>
	<h2>商品管理后台系统</h2>
	<div id="toolbar">
		<a href="#" class="easyui-linkbutton" iconCls="icon-add" plain="true"
			onclick="newGoods()">添加</a> <a href="#" class="easyui-linkbutton"
			iconCls="icon-edit" plain="true" onclick="editGoods()">修改</a> <a
			href="#" class="easyui-linkbutton" iconCls="icon-remove" plain="true"
			onclick="removeGoods()">删除</a> <input id="selectgoods"
			class="easyui-searchbox" style="width:300px"
			data-options="menu:'#mm'" onclick="selectGoods()" />
		<div id="mm" style="width:150px">
			<div data-options="name:'all',selected:true">All</div>
			<div data-options="name:'goodsname'">商品名称</div>
			<div data-options="name:'goodsTypename'">商品类型</div>
		</div>
	</div>
	<!--
       	data-options:通过 <table> 标记创建数据网格（datagrid）。嵌套的 <th> 标签定义表格中的列。
       	rownumbers:设置为true将显示行数。
       	singleSelect(boolean):设置为true将只允许选择一行。
       	autoRowHeight(boolean):定义设置行的高度，根据该行的内容。设置为false可以提高负载性能。
       	pagination:设置为 true，则在数据网格（datagrid）底部显示分页工具栏。
       	pageSize:初始化页面尺寸,及每页显示的数据记录数
    -->
	<table id="dg" toolbar="#toolbar" title="商品管理"
		style="width:1100px;height:430px"
		data-options="
                rownumbers:true,
                singleSelect:true,
                autoRowHeight:true,
                pagination:true,
                pageSize:10">
		<thead>
			<tr>
				<th field="id" width="80">商品编号</th>
				<th field="goodsname" width="100">商品名称</th>
				<th field="goodsimage" width="80">商品图片</th>
				<th field="goodsprice" width="80" align="right">商品价格</th>
				<th field="goodstime" width="200" align="right">上架时间</th>
				<th field="goodsnumbersales" width="80" align="right">销售数量</th>
				<th field="gid" width="100">类型编号</th>
				<th field="name" width="110">商品类型</th>
				<th field="image" width="110">类型图片</th>
				<th field="deltele" width="100">操作</th>
			</tr>
		</thead>
	</table>
	<div id="dlg" class="easyui-dialog"
		style="width: 600px; height: 400px; padding: 0px 0px;" closed="true"
		buttons="#dlg-buttons">
		<div class="ftitle" style="font-size: 1.5em; text-align: center;">商品</div>
		<form id="fm" method="post" novalidate>
			<div class="fitem">
				<label>商品编号:</label> <input id="f0" disabled="disabled" name="id"
					class="easyui-validatebox" required="true">
			</div>
			<div class="fitem">
				<label>商品名称:</label> <input id="f1" name="goodsname"
					class="easyui-validatebox" required="true">
			</div>
			<div class="fitem">
				<label>商品图片:</label> <input id="f2" name="goodsimage"
					class="easyui-validatebox" required="true"> <img src="">
			</div>
			<div class="fitem">
				<label>商品价格:</label> <input id="f3" name="goodsprice"
					class="easyui-validatebox" required="true">
			</div>
			<div class="fitem">
				<label>上架时间:</label> <input id="f4" name="goodstime"
					class="easyui-datetimebox"></input>
			</div>
			<div class="fitem">
				<label>销售数量:</label> <input id="f5" name="goodsnumbersales"
					class="easyui-validatebox" required="true">
			</div>
			<div class="fitem">
				<label>类型编号:</label> <input disabled="disabled" id="f6" name="gid"
					class="easyui-validatebox" required="true">
			</div>
			<div class="fitem">
				<label>商品类型:</label> <input id="f7" name="name" disabled="disabled"
					class="easyui-validatebox" required="true">
			</div>
			<div class="fitem">
				<label>类型图片:</label> <input id="f8" disabled="disabled" name="image"
					class="easyui-validatebox" required="true">
				<button onclick="uploadimage()" type="button">上传</button>
			</div>
			<div>
				<img alt="不见鸟" class="img1">
			</div>
		</form>
		<div id="dlg-buttons">
			<a href="#" class="easyui-linkbutton" iconCls="icon-ok"
				onclick="saveGoods()">保存</a> <a href="#" class="easyui-linkbutton"
				iconCls="icon-cancel" onclick="javascript:$('#dlg').dialog('close')">取消</a>
		</div>
	</div>
	<div id="dd" class="easyui-dialog" title="My Dialog"
		style="width: 600px; height: 400px;text-align:center"
		data-options="iconCls:'icon-save',resizable:true,modal:false,closed:true"
		buttons="#aa">
		<form id="satmpdefForm" action="#"
			style="padding: 10px 20px 10px 40px;" enctype="multipart/form-data"
			method="post">
			<table>
			<tr id="inputCB1" >
			<td><label> 横版图片 </label></td>
			<td><input multiple style="width:300px" id="imageupload" name="imageupload" class="easyui-filebox" data-options='onChange:change_photo' /></td>
		</tr>
		<tr id="inputCB4">
			<td><label>图片预览</label></td>
			<td>
				<div id="Imgdiv"><img id="Img" width="200px" height="200px" /></div>
			</td>
		</tr>
			</table>
			</form>
			<div id="aa">
				<a href="#" class="easyui-linkbutton" iconCls="icon-ok"
				onclick="submitForm()"
					form="upload_form">保存</a> <a href="#" class="easyui-linkbutton"
					iconCls="icon-cancel" onclick="javascript:$('#dd').dialog('close')">取消</a>
			</div>
	</div>
</body>
<!--初始化网格  -->
<script>
	/*字段长度  */
	var length;
	/*存放字段  */
	var rr = [];
	function getData() {
		var rows = [];
		$.ajax({
			url : 'selecttest.do',
			type : 'post',
			async : false,
			contentType : 'application/json',
			success : function(data) {
				for (x in data) {
					rows.push({
						id : data[x].id,
						goodsname : data[x].goodsname,
						goodsimage : data[x].goodsimage,
						goodsprice : data[x].goodsprice,
						goodsnumbersales : data[x].goodsnumbersales,
						goodstime : data[x].goodstime,
						gid : data[x].gid,
						name : data[x].name,
						image : data[x].image,
						deltele : '<a href="update.do?id=' + data[x].id + '">编辑</a>/<a href="#">删除</a></td>'
					});
				}
			}
		})
		rr = rows;
		length = rows.length;
		return rows;
	}
	function pagerFilter(data) {
		// 判断数据是否是数组，如果数据源来自于后台json,则需要对数据源做数据解析
		if (typeof data.length == 'number' && typeof data.splice == 'function') {
			data = {
				total : data.length,
				rows : data
			}
		}
		var dg = $(this);
		//获得初始化dg时的option对象；而option里面的所有属性就是dg初始化设置的属性；
		var opts = dg.datagrid('options');
		//获取dg的分页（pager）对象。
		var pager = dg.datagrid('getPager');
		//创建分页（pagination）
		pager.pagination({
			//当用户选择新的页面时触发。回调函数包含两个参数：pageNumber：新的页码 pageSize：新的页面尺寸
			//easyUI分页提供的属性：pageNum（目标页面的页数编号），pageSize(目标页面的尺寸)
			onSelectPage : function(pageNum, pageSize) {
				//创建分页（pagination）时显示的页码。
				opts.pageNumber = pageNum;
				//页面尺寸。（注：每页显示的最大记录数）
				opts.pageSize = pageSize;
				//刷新并显示分页信息
				pager.pagination('refresh', {
					pageNumber : pageNum,
					pageSize : pageSize
				});
				//从data中加载本地数据，旧行被移除
				dg.datagrid('loadData', data);
			}
		});
		//查询data的可用数据    !undefined等于true
		if (!data.originalRows) {
			data.originalRows = (data.rows);
		}
		//显示数据的起始位置
		var start = (opts.pageNumber - 1) * parseInt(opts.pageSize);
		//显示数据的结束位置
		var end = start + parseInt(opts.pageSize);
		//data的rows属性 ; slice() 方法可从已有的数组中返回选定的元素。
		data.rows = (data.originalRows.slice(start, end));
		return data;
	}
	$('#dg').datagrid({
		onClickRow : function(rowIndex, rowData) {
			/* alert (rowData.id) */
		}
	});
	$(function() {
		//加载数据
		//loaddata:加载本地数据，旧的行会被移除。loadFilter可以返回过滤后的数据进行展示
		$('#dg').datagrid({
			loadFilter : pagerFilter
		}).datagrid('loadData', getData());
	});
</script>
<script type="text/javascript">
	var imagename;
	function uploadimage() {
		$('#dd').dialog('open').dialog('setTitle', '上传图片');
	}
	//提交表单数据
    function submitForm() {
                var form = new FormData($('#satmpdefForm')[0]);
                 $.ajax({
                     url: 'upload.do',
                     type: 'post',
                     data: form,
                     processData:false,
                     contentType:false,
                     success:function(data){
                     	alert(data)
                     		$('#dd').dialog('close')
							var row = $('#dg').datagrid('getSelected');
							row.goodsimage = data
							$('#fm2').val(imagename)
							getData();
							$('#fm').form('load', row);
							$(".img1").attr('src',"<%=basePath%>images/"+data);
                       		 $.messager.show({
                                        title : '提示',
                                        msg : '提交成功',
                                        timeout : 3000,
                                        showType : 'slide'
                                        });
                         }
                 });
    }
	function change_photo() {
		PreviewImage($("input[name='imageupload']")[0], 'Img', 'Imgdiv');
	}
	function PreviewImage(fileObj, imgPreviewId, divPreviewId) {
		var allowExtention = ".jpg,.bmp,.gif,.png"; //允许上传文件的后缀名document.getElementById("hfAllowPicSuffix").value;  
		var extention = fileObj.value.substring(fileObj.value.lastIndexOf(".") + 1).toLowerCase();
		var browserVersion = window.navigator.userAgent.toUpperCase();
		if (allowExtention.indexOf(extention) > -1) {
			if (fileObj.files) { //HTML5实现预览，兼容chrome、火狐7+等  
				if (window.FileReader) {
					var reader = new FileReader();
					reader.onload = function(e) {
						document.getElementById(imgPreviewId).setAttribute("src", e.target.result);
					}
					reader.readAsDataURL(fileObj.files[0]);
				} else if (browserVersion.indexOf("SAFARI") > -1) {
					alert("不支持Safari6.0以下浏览器的图片预览!");
				}
			} else if (browserVersion.indexOf("MSIE") > -1) {
				if (browserVersion.indexOf("MSIE 6") > -1) { //ie6  
					document.getElementById(imgPreviewId).setAttribute("src", fileObj.value);
				} else { //ie[7-9]  
					fileObj.select();
					if (browserVersion.indexOf("MSIE 9") > -1)
						fileObj.blur(); //不加上document.selection.createRange().text在ie9会拒绝访问  
					var newPreview = document.getElementById(divPreviewId + "New");
					if (newPreview == null) {
						newPreview = document.createElement("div");
						newPreview.setAttribute("id", divPreviewId + "New");
						newPreview.style.width = document.getElementById(imgPreviewId).width + "px";
						newPreview.style.height = document.getElementById(imgPreviewId).height + "px";
						newPreview.style.border = "solid 1px #d2e2e2";
					}
					newPreview.style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod='scale',src='" + document.selection.createRange().text + "')";
					var tempDivPreview = document.getElementById(divPreviewId);
					tempDivPreview.parentNode.insertBefore(newPreview, tempDivPreview);
					tempDivPreview.style.display = "none";
				}
			} else if (browserVersion.indexOf("FIREFOX") > -1) { //firefox  
				var firefoxVersion = parseFloat(browserVersion.toLowerCase().match(/firefox\/([\d.]+)/)[1]);
				if (firefoxVersion < 7) { //firefox7以下版本  
					document.getElementById(imgPreviewId).setAttribute("src", fileObj.files[0].getAsDataURL());
				} else { //firefox7.0+                      
					document.getElementById(imgPreviewId).setAttribute("src", window.URL.createObjectURL(fileObj.files[0]));
				}
			} else {
				document.getElementById(imgPreviewId).setAttribute("src", fileObj.value);
				alert(document.getElementById(imgPreviewId).getAttribute("src"))
			}
		} else {
			alert("仅支持" + allowExtention + "为后缀名的文件!");
			fileObj.value = ""; //清空选中文件  
			if (browserVersion.indexOf("MSIE") > -1) {
				fileObj.select();
				document.selection.clear();
			}
			fileObj.outerHTML = fileObj.outerHTML;
		}
	}


	$('#selectgoods').searchbox({
		searcher : function(value, name) {
			var goods = [];
			$.ajax({
				url : 'selecttest.do?value=' + value + '&type=' + name + '',
				type : 'post',
				async : false,
				contentType : 'application/json',
				success : function(data) {
					if (data.length > 0) {
						for (x in data) {
							goods.push({
								id : data[x].id,
								goodsname : data[x].goodsname,
								goodsimage : data[x].goodsimage,
								goodsprice : data[x].goodsprice,
								goodsnumbersales : data[x].goodsnumbersales,
								goodstime : data[x].goodstime,
								gid : data[x].gid,
								name : data[x].name,
								image : data[x].image,
								deltele : '<a href="update.do?id=' + data[x].id + '">编辑</a>/<a href="#">删除</a></td>'
							});
							$('#dg').datagrid({
								loadFilter : pagerFilter
							}).datagrid('loadData', goods);
						}
					} else {
						$.messager.show({
							title : 'Error',
							msg : "没有找到你要查询的数据。。",
							timeout : 1000,
						});
						$('#dg').datagrid({
							loadFilter : pagerFilter
						}).datagrid('loadData', goods);
					}
				}
			})
		}
	});

	$("#f2").blur(function() {
		if ($("#f2").val() != null)
		$(".img1").attr('src',"<%=basePath%>images/" + $("#f2").val());
	})
	$("#f6").blur(function() {
		if ($("#f6").val() != null) {
			for (var i = 1; i <= length; i++) {
				if (rr[i].gid == $("#f6").val()) {
					$("#f7").val(rr[i].name);
					$("#f8").val(rr[i].image);
					break;
				} else {
					$("#f7").val("没有该类型对应的ID");
				}
			}
		}
	})
	var method;
	var messager;
	/*添加 */
	function newGoods() {
		$("#f6").attr("disabled", false);
		$("#f7").attr("disabled", true);
		$("#f8").attr("disabled", true);
		$('#dlg').dialog('open').dialog('setTitle', '商品添加');
		$('#fm').form('clear');
		$("#f0").val(length + 1);
		method = "newGoods"
		messager = "add"
	}
	/*修改  */
	function editGoods() {
		var pathName = window.document.location.pathname;
		var curWwwPath = pathName.substring(0, pathName.substr(1).indexOf('/') + 1);
		var row = $('#dg').datagrid('getSelected');
		$(".img1").attr('src', curWwwPath + "/images/" + row.goodsimage);
		if (row) {
			$('#dlg').dialog('open').dialog('setTitle', '修改商品');
			$('#fm').form('load', row);
		}
		method = "editGoods"
		messager = "edit"
	}
	function saveGoods() {
		var row = $('#dg').datagrid('getSelected');
		if (row) {
			$.messager.confirm('温馨提示', 'Are you sure you want to ' + messager + ' record?', function(r) {
				if (r) {
					$.ajax({
						url : 'controllerGoods.do?method=' + method + '',
						type : 'post',
						dataType : 'json',
						data : JSON.stringify(goods),
						async : false,
						contentType : 'application/json',
						success : function(data) {
							if (data) {
								location.reload();
							} else {
								$.messager.show({
									title : 'Error',
									msg : "修改失败请联系管理员"
								});
							}

						}
					})
				} else {
					$('#dlg').dialog('close')
				}
			});
		}
		var goods = {
			"id" : $("#f0").val().trim(),
			"goodsname" : $("#f1").val().trim(),
			"goodsimage" : $("#f2").val().trim(),
			"goodsprice" : $("#f3").val().trim(),
			"goodstime" : $("#f4").val().trim(),
			"goodsnumbersales" : $("#f5").val().trim(),
			"gid" : $("#f6").val().trim(),
			"name" : $("#f7").val().trim(),
			"image" : $("#f8").val().trim()
		};

	}
	function removeGoods() {
		var row = $('#dg').datagrid('getSelected');
		method = "removeGoods"
		var goods = {
			"id" : row.id
		}
		if (row) {
			$.messager.confirm('Confirm',
				'你确定要删除当前选中用户吗？',
				function(r) {
					if (r) {
						$.ajax({
							url : 'controllerGoods.do?method=' + method + '',
							type : 'post',
							dataType : 'json',
							data : JSON.stringify(goods),
							async : false,
							contentType : 'application/json',
							success : function(data) {
								if (data) {
									location.reload();
								} else {
									$.messager.show({
										title : 'Error',
										msg : "删除失败请联系管理员"
									});
								}
							}
						})
					}
				}
			);
		}
	}
</script>
</html>