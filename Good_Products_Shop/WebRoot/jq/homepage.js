$(function(){
	homepage();
	$(".on_2").click(function(){
		alert("dianle");
		$("#huanghuanghuang").css("margin-left","-1200px");
	});
});

function homepage(){
	$.ajax({
		url:'HomePageAction',
		type:'post',
		async:false,
		dataType:'json',
		success:function(data){
			for(x in data.lists){
//				console.info("CC"+data.lists[x]);
				if(x%3==0){
					$("dt:eq("+(data.lists[x]-1)+") a").attr("href","Product?id="+data.lists[x]);
				}
				if(x%3==1){
					$("dd:eq("+(data.lists[x-1]-1)+")").text(data.lists[x]);
				}
				if(x%3==2){
					$("dt:eq("+(data.lists[x-2]-1)+") img").attr("src","images/"+data.lists[x]);
				}
			}
//			for(x in data.cph){
//				$(".word_2-1:eq(1) span").text(data.cph[x].historyname);
//				$(".word_2-2:eq(1) a").html(data.cph[x].historycontent);
//				$("pic_3:eq(1) img").attr("src","images/data.cph[x].companyhistoryimage");				
//			}
			
		},
		error:function(){
			alert("error");
		}
	});
}