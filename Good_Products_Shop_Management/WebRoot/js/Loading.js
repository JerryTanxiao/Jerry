/*var maskWidth = $(window).width();
var maskHeight = $(window).height();
var maskHtml = "<div id='maskLoading' class='panel-body' style='z-index:1000;position:absolute;left:0;width:100%;";
maskHtml += "height:" + maskHeight + "px;top:0'>";
maskHtml += "<div class='panel-header panel=loading' style='position:absolute;cursor:wait;left:" + ((maskWidth / 2) - 100) + "px;top:" + (maskHeight / 2 - 50) + "px;width:150px;height:16px;";
maskHtml += "padding:10px 5px 10px 30px;font-size:12px;border:1px solid #ccc;background-color:white;'>";
maskHtml += "页面加载中，请等待...";
maskHtml += "</div>";
maskHtml += "</div>";
document.write(maskHtml);
function CloseMask() {
	$('#maskLoading').fadeOut('fast', function() {
		$(this).remove();
	});
}
var loadComplete;
$.parser.onComplete = function() {
	if (loadComplete)
		clearTimeout(loadComplete);
	loadComplete = setTimeout(CloseMask, 1000);
}*/
$(function(){
	ajaxLoading();
	setTimeout('ajaxLoadEnd()',2000);
})
function ajaxLoading() {
	$("<div class=\"datagrid-mask\"></div>").css({
		display : "block",
		width : "100%",
		height : $(window).height()
	}).appendTo("body");
	$("<div class=\"datagrid-mask-msg\"></div>").html("正在处理，请稍候。。。").appendTo("body").css({
		display : "block",
		left : ($(document.body).outerWidth(true) - 190) / 2,
		top : ($(window).height() - 45) / 2
	});
}
function ajaxLoadEnd() {
	$(".datagrid-mask").remove();
	$(".datagrid-mask-msg").remove();
}