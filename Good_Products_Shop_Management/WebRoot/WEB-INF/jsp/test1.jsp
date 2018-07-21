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
</head>
<style type="text/css">
		#fm{
			margin:0;
			padding:10px 30px;
		}
		.ftitle{
			font-size:14px;
			font-weight:bold;
			color:#666;
			padding:5px 0;
			margin-bottom:10px;
			border-bottom:1px solid #ccc;
		}
		.fitem{
			margin-bottom:5px;
		}
		.fitem label{
			display:inline-block;
			width:80px;
		}
	</style>
	<script type="text/javascript">
		var url;
		function newUser(){
			$('#dlg').dialog('open').dialog('setTitle','新建用户');
			$('#fm').form('clear');
			url = 'user/addUser';
		}
		function editUser(){
			var row = $('#dg').datagrid('getSelected');
			// alert(row.userId);
		
			if (row){
				$('#dlg').dialog('open').dialog('setTitle','编辑用户');
				$('#fm').form('load',row);
				//url = 'user/updateUser?id='+row.userId;
				url ='user/updateUser';
			}
		}
		function saveUser(){
			$('#fm').form('submit',{
				//url:'user/addUser',
				url: url,
				onSubmit: function(){
					return $(this).form('validate');
				},
				success: function(result){
					var result = eval('('+result+')');
					if (result.success){
						$.messager.show({
						title:'Info',
						msg:result.msg,
						showType:'fade',
						style:{
							right:'',
							bottom:''
							}
						});
						$('#dlg').dialog('close');		// close the dialog
						$('#dg').datagrid('reload');	// reload the user data
					} else {
						$.messager.show({
							title: 'Error',
							msg: result.msg
						});
					}
				}
			});
		}
		function removeUser(){
			var row = $('#dg').datagrid('getSelected');
			 //alert(row.id);
			if (row){
				$.messager.confirm('Confirm','你确定要删除用户吗?',function(r){
					if (r){
						$.post('user/removeUser',{id:row.userId},function(result){
							if (result.success){
								$.messager.show({
						title:'Info',
						msg:result.msg,
						showType:'fade',
						style:{
							right:'',
							bottom:''
							}
						});
								$('#dg').datagrid('reload');	// reload the user data
							} else {
								$.messager.show({	// show error message
									title: 'Error',
									msg: result.msg
								});
							}
						},'json');
					}
				});
			}
		}
		function doSearch(){
			$('#dg').datagrid('load',{
			queryUserId: $('#userId').val()
		});
}
	</script>
<body>
	<h2>Basic CRUD Application</h2>
	<div class="demo-info" style="margin-bottom:10px">
		<div class="demo-tip icon-tip"> </div>
		<div>Click the buttons on datagrid toolbar to do crud actions.</div>
	</div>
	
	<table id="dg" title="My Users" class="easyui-datagrid" style="width:700px;height:250px"
			url="user/listUsers"
			toolbar="#toolbar" pagination="true"
			rownumbers="true" fitColumns="true" singleSelect="true">
		<thead>
			<tr>
				<th field="userId" width="50">UserId</th>
				<th field="userName" width="50">UserName</th>
				<th field=passWord width="50">PassWord</th>
				<th field="enable" width="50">Enable</th>
			</tr>
		</thead>
	</table>
	<div id="toolbar">
		<a href="javascript:void(0);" class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="newUser()">New User</a>
		<a href="javascript:void(0);" class="easyui-linkbutton" iconCls="icon-edit" plain="true" onclick="editUser()">Edit User</a>
		<a href="javascript:void(0);" class="easyui-linkbutton" iconCls="icon-remove" plain="true" onclick="removeUser()">Remove User</a>
		<div>
			<span>User ID:</span>
			<input id="userId" style="line-height:26px;border:1px solid #ccc">
			<a href="javascript:void(0);" class="easyui-linkbutton" plain="true" onclick="doSearch()">Search</a>
		</div>
	</div>
	
	<div id="dlg" class="easyui-dialog" style="width:400px;height:280px;padding:10px 20px"
			closed="true" buttons="#dlg-buttons">
		<div class="ftitle">User Information</div>
		<form id="fm" method="post" novalidate>
			<div class="fitem">
				<label>UserId:</label>
				<input name="userId" class="easyui-validatebox" required="true">
			</div>
			<div class="fitem">
				<label>UserName:</label>
				<input name="userName" class="easyui-validatebox" required="true">
			</div>
			<div class="fitem">
				<label>PassWord:</label>
				<input name="passWord">
			</div>
			<div class="fitem">
				<label>Enable:</label>
				<input name="enable" class="easyui-validatebox" >
			</div>
		</form>
	</div>
	<div id="dlg-buttons">
		<a href="javascript:void(0);" class="easyui-linkbutton" iconCls="icon-ok" onclick="saveUser()">Save</a>
		<a href="javascript:void(0);" class="easyui-linkbutton" iconCls="icon-cancel" onclick="javascript:$('#dlg').dialog('close')">Cancel</a>
	</div>
</body>
</html>