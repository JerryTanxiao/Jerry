function aa() {
	var menus1 = [];
	menus1 = {
		"menus" : [
			{
				"menuid" : "1",
				"icon" : "icon-sys",
				"menuname" : "权限管理",
				"menus" : [
					{
						"menuid" : "12",
						"menuname" : "easyui",
						"icon" : "icon-add",
						"url" : "http://www.jeasyui.net/"
					},
					{
						"menuid" : "13",
						"menuname" : "用户管理",
						"icon" : "icon-users",
						"url" : "user/goUser.do"
					},
					{
						"menuid" : "14",
						"menuname" : "角色管理",
						"icon" : "icon-role",
						"url" : "role/goRole.do"
					},
					{
						"menuid" : "15",
						"menuname" : "权限设置",
						"icon" : "icon-set",
						"url" : "power/goPower.do"
					},
					{
						"menuid" : "16",
						"menuname" : "系统日志",
						"icon" : "icon-log",
						"url" : "log/log.do"
					}
				]
			}, {
				"menuid" : "8",
				"icon" : "icon-sys",
				"menuname" : "员工管理",
				"menus" : [ {
					"menuid" : "21",
					"menuname" : "员工列表",
					"icon" : "icon-nav",
					"url" : "sb/demo.do"
				},
					{
						"menuid" : "22",
						"menuname" : "视频监控",
						"icon" : "icon-nav",
						"url" : "sb/demo1.do"
					}
				]
			}, {
				"menuid" : "56",
				"icon" : "icon-sys",
				"menuname" : "部门管理",
				"menus" : [ {
					"menuid" : "31",
					"menuname" : "添加部门",
					"icon" : "icon-nav",
					"url" : "sb/demo1.do"
				},
					{
						"menuid" : "32",
						"menuname" : "部门列表",
						"icon" : "icon-nav",
						"url" : "sb/demo2.do"
					}
				]
			}, {
				"menuid" : "28",
				"icon" : "icon-sys",
				"menuname" : "财务管理",
				"menus" : [ {
					"menuid" : "41",
					"menuname" : "收支分类",
					"icon" : "icon-nav",
					"url" : "sb/demo.do"
				},
					{
						"menuid" : "42",
						"menuname" : "报表统计",
						"icon" : "icon-nav",
						"url" : "sb/demo1.do"
					},
					{
						"menuid" : "43",
						"menuname" : "添加支出",
						"icon" : "icon-nav",
						"url" : "sb/demo2.do"
					}
				]
			}, {
				"menuid" : "39",
				"icon" : "icon-sys",
				"menuname" : "商城管理",
				"menus" : [ {
					"menuid" : "51",
					"menuname" : "商品分类",
					"icon" : "icon-nav",
					"url" : "goods/good.do"
				},
					{
						"menuid" : "52",
						"menuname" : "商品列表",
						"icon" : "icon-nav",
						"url" : "goods/update.do"
					},
					{
						"menuid" : "53",
						"menuname" : "商品订单",
						"icon" : "icon-nav",
						"url" : "goods/testpage.do"
					}
				]
			}
		]
	};
	$.ajax({
		url : 'getRoleAndPermission.do',
		type : 'post',
		dataType : 'json',
		async : false,
		contentType : 'application/json',
		success : function(data) {
			var role = data.percodes;
		}
	});
	return menus1;
}
var _menus = aa();