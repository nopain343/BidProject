$(document).ready(function(){
	setInterval(function() {
		for(var i=1; i<10; i++){
			
//		var term = $("#term").val();
		var term = $("input[id='term" + i + "']");

		var months = parseInt(term.substring(5, 7));
		var days = parseInt(term.substring(8, 10));
		var hours = parseInt(term.substring(11, 13));
		var minutes = parseInt(term.substring(14, 16));
		var seconds = parseInt(term.substring(17, 19));
		
		// Set the unit values in milliseconds.
		var msecPerMinute = 1000 * 60;
		var msecPerHour = msecPerMinute * 60;
		var msecPerDay = msecPerHour * 24;
		if(months == "1" || "3" || "5" || "7" || "8" || "10" || "12"){
			var msecPerMonth = msecPerDay * 31;
		}else if(months == "2"){
			var msecPerMonth = msecPerDay * 29;
		}else{
			var msecPerMonth = msecPerDay * 30;
		}
		

		// Set a date and get the milliseconds
		var date = new Date();
		var dateMsec = date.getTime();

		date.setMonth(months-1);
		date.setDate(days);
		date.setHours(hours, minutes, seconds, 0);

		// Get the difference in milliseconds.
		var interval = date.getTime() - dateMsec;

		// Calculate how many days the interval contains. Subtract that
		// many days from the interval to determine the remainder.
		var months = Math.floor(interval / msecPerMonth );
		interval = interval - (months * msecPerMonth );
		
		var days = Math.floor(interval / msecPerDay );
		interval = interval - (days * msecPerDay );

		// Calculate the hours, minutes, and seconds.
		var hours = Math.floor(interval / msecPerHour );
		interval = interval - (hours * msecPerHour );

		var minutes = Math.floor(interval / msecPerMinute );
		interval = interval - (minutes * msecPerMinute );

		var seconds = Math.floor(interval / 1000 );
		
		$("#timetest").html(months + " months, " +  days + " days, " + hours + " hours, " + minutes + " minutes, " + seconds + " seconds.");
		
		
		
		
		if(months <= 0 && days <= 0 && hours <= 0 && minutes <= 0 && seconds <= 0){
			$("#myBid").html('<a href="/BidProject/auction.au?code=${ob.code}">상품정보가기</a>')
		}else{
			$("#myBid").html('<a href="/BidProject/auction.au?code=${ob.code}">응찰자 정보 보기</a>')
		}
		}
	}, 1000);
});

