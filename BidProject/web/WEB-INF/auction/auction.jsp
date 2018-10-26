<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Auction</title>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/maxPrice.js"></script>
</head>
<body>
옥션페이지
${auction.prodname}
<br>

현재 최고 응찰가 <span id="output"></span>
<br>
시작가 : KRW ${auction.price}
<br>
<form action="/BidProject/auctionProc.au" method="post">
	<input type="hidden" value="${loginOK.id}" name="id"/>
	<input type="hidden" value="${auction.code}" id="code" name="code"/>
	<input type="hidden" value="${auction.term}" name="term"/>
	응찰가 : <input type="number" name="finalPrice"/>
	<input type="submit" value="PLACE BID"/>
</form>
제품상태 : ${auction.condition}
<br>
응찰마감시간 : ${auction.term}
<br>
태그 : ${auction.ref}
<h3>상세설명</h3>
<hr>
${auction.descrip}
<br>

${loginOK.id}
${auction.code}
${auction.term}

</body>
</html>