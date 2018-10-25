<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Auction</title>
</head>
<body>
옥션페이지
${auction.prodName}
<br>
현재 최고가 : KRW <input type="number">
<br>
시작가 : KRW ${auction.price}
<br>
<form action="/BidProject/auctionProc.au" method="post">
	<input type="submit" value="PLACE BID"/>
</form>
제품상태 : ${auction.condition}
<br>
입찰마감시간 : ${auction.term}
<br>
태그 : ${auction.ref}
<h3>상세설명</h3>
<hr>
${auction.descrip}


</body>
</html>