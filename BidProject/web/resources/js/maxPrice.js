$(document).ready(function(){
	

	$("#click").click(function(){
		var code = $("#code").val();
		
		$.ajax({
			type:"GET",
			url:"/BidProject/maxPrice.au",
			data : {"code" : code},
			dataType:"json",
			error:function(request,status,error){
	            alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
	    	},
			success:function(data){
				console.log(data);
				
				//$("#output").html(data);
			}
		});
	});
	
});

