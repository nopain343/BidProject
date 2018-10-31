

$(document).ready(function(){
	var code = $("#code").val();
			
	$.ajax({
		type:"get",
		url:"/BidProject/maxPrice.au?code="+code,
		dataType : "json",
		success:function(data){
			$("#output").html(data.finalPrice + "원");
			$("#dtime").html(data.term.substring(0,1) + "일 " + data.term.substring(1,3) + "시간 " +  data.term.substring(3,6) + "분 ");
		},
		error:function(request,status,error){
            alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
    	}
	
	});
	setInterval(function() {
			var code = $("#code").val();
			
			$.ajax({
				type:"get",
				url:"maxPrice.au?code="+code,
				dataType : "json",
				success:function(data){
					$("#output").html(data.finalPrice + "원");
					$("#dtime").html(data.term.substring(0,1) + "일 " + data.term.substring(1,3) + "시간 " +  data.term.substring(3,6) + "분 ");
				},
				error:function(request,status,error){
		            alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		    	}
				 
			});
		}, 3000);

		
		
		
		
	
	
});
