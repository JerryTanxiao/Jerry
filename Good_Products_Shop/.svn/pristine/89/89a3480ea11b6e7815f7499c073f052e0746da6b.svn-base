$(function(){
		getProvince();
//		getCity();
//		getCounty();
		$(".select_1").change(function(){
			if($(".select_1 option:eq(0)").text()=="请选择"){
				$(".select_1 option:eq(0)").remove();
			}
			getCity();
			getCounty();
		});
		$(".select_2").change(function(){
			getCounty();
		});
	});
	
	function getProvince(){
		$.ajax({
			url:'ProvinceAction',
			type:'post',
			async:false,
			dataType:'json',
			success:function(data){
				var str="";
				for(x in data.addresses){
					str+="<option>"+data.addresses[x]+"</option>";
				}
//				$(".select_1 option").remove();
				$(".select_1").append(str);
			},
			error:function(){
				alert("province error");
			}
		});
	}
	
	function getCity(){
		$.ajax({
			url:'CityAction',
			type:'post',
			async:false,
			dataType:'json',
			data:{
				province:$(".select_1 option:selected").text()
			},
			success:function(data){
				var str="";
				for(x in data.citys){
					str+="<option>"+data.citys[x]+"</option>";
				}
				$(".select_2 option").remove();
				$(".select_2").append(str);
			},
			error:function(){
				alert("city error");
			}
		});
	}
	
	function getCounty(){
		$.ajax({
			url:'CountyAction',
			type:'post',
			async:false,
			dataType:'json',
			data:{
				city:$(".select_2 option:selected").text()
			},
			success:function(data){
				var str="";
				for(x in data.countys){
					str+="<option>"+data.countys[x]+"</option>";
				}
				$(".select_3 option").remove();
				$(".select_3").append(str);
			},
			error:function(){
				alert("county error");
			}
		});
	}