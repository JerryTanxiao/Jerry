$(document).ready(function() {
	$("button").click(function() {
		$.ajax({
			url : 'JobAction',
			type : 'post',
			async : false,
			dataType : 'json',
			data : {
				
			},
			success : function(data) {}
		})
	});
/*	$(function() {
		$.ajax({
			url : 'JoinAction',
			type : 'post',
			async : false,
			dataType : 'json',
			success : function(data) {
				var str = null;
				for (x in data.joinlist) {
					for (y in data.joinlist[x]) {
						alert(data.joinlist[x][y])
						 str+="<dl class="one-13"><dt class="fl"><img src="images/data.join[x][y].image"></dt><dd><p class="box_13-1"><a href="#">良品铺子湖北 全线开放加盟了</a></p><p class="box_13-2">2015-12-31</p><p class="box_13-3">招商会近期，有一则消息在朋友圈疯传，良品铺子湖北全线开放加盟了。这个是真的吗？小编想说招商会近期，有一则消息在朋友圈疯传，良品铺子湖北全线开放加盟了。这个是真的吗？小编想说当然是真的当然是真的招商会近期，有一则消息在朋友圈疯传,良品铺子湖北全线开放加盟了。这个是真的吗?小编想说当然［...］</p><p class="box_13-4"><a href="#">查看详情&gt;</a></p></dd></dl>"; 

					}
				}
			}
		});
	})*/
});