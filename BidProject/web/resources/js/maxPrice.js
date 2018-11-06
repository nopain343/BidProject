

$(document).ready(function(){
	var fprice = null;
	
	var code = $("#code").val();
			
	$.ajax({
		type:"get",
		url:"/BidProject/maxPrice.au?code="+code,
		dataType : "json",
		success:function(data){
			fprice = data.finalPrice;
			$("#output").html("<span id='fprice' value=" + data.finalPrice + ">" + data.finalPrice + "원</span>");
			console.log(data.term);
			if(data.term == 'fin'){
				$("#dtime").html("-일 -시 -분")
				$("#submit").html("<input type='button' value='경매가 종료되었습니다'/>")
			}else{
				$("#dtime").html(data.term.substring(0,1) + "일 " + data.term.substring(1,3) + "시간 " +  data.term.substring(3,6) + "분 ");
				$("#submit").html("<input type='submit' value='PLACE BID'/>")
			}
			
			
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
					$("#output").html("<span id='fprice' value=" + data.finalPrice + ">" + data.finalPrice + "원</span>");
					console.log(data.term);
				
					if(data.term == 'fin'){
						$("#dtime").html("-일 -시 -분")
						$("#submit").html("<input type='button' value='경매가 종료되었습니다'/>")
					}else{
						$("#dtime").html(data.term.substring(0,1) + "일 " + data.term.substring(1,3) + "시간 " +  data.term.substring(3,6) + "분 ");
						$("#submit").html("<input type='submit' value='PLACE BID'/>")
					}
				},
				error:function(request,status,error){
		            alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		    	}
				 
			});
		}, 3000);

		
		
		
		
	
	
});
