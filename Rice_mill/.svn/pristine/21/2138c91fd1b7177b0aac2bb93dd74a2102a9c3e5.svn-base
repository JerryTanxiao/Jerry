$(function(){
	$.ajax({
		url : 'isSessionHaveUser.do',
		type : 'post',
		dataType : 'json',
		async : false,
		contentType : 'application/json',
		success : function(data) {
			$("#inout").empty();
			var str='<a>会员:'+data.username+'&nbsp;|</a><a id="zhuxiao" href="#">&nbsp;注销</a>';
			var str2='<li><a href="vip.do">会员中心</a></li>';
			$("#inout").append(str);
			$(".w900_ul1").append(str2);
		}
	});
	$("#zhuxiao").click(function(){
		var zx = confirm("确认注销吗？");
		if(zx){
		$.ajax({
			url : 'cancellation.do',
			type : 'post',
			dataType : 'json',
			async : false,
			success : function(data) {
				if(data){
					alert("注销成功！");
					window.location.reload();
				}
			}
		});			
		}else{
			return false;
		}
	});
	var url = window.location;
	var title = document.title;
	var ua = navigator.userAgent.toLowerCase();
});
	