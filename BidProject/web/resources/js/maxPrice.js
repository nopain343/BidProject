$(document).ready(function(){
	var code = $("#code").val();

	$.ajax({
		type:"GET",
		url:"/BidProject/maxPrice.au",
		data : {"code" : code},
		error:function(request,status,error){
            alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
    	},
		success:function(data){
			$("#output").html(data);
		}
	});
});

