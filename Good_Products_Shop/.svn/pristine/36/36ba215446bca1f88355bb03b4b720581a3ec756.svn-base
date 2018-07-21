$(function(){
	homepage();
});

function homepage(){
	$.ajax({
		url:'HomePageAction',
		type:'post',
		async:false,
		dataType:'json',
		success:function(data){
			$(".box_11-3").html(data.cp.company_culture);
			$(".word_4-2").html(data.cp.company_phone);
			$(".word_4-4").html(data.cp.company_fax);
			$(".word_4-5").html(data.cp.company_email);
		},
		error:function(){
			alert("error");
		}
	});
}