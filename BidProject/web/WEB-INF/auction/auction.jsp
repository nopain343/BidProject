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
	<input type="hidden" value="${auction.term}" id="term" name="term"/>
	응찰가 : <input type="number" id="click" name="finalPrice"/>
	
	<span id="submit"><input type="submit" value="PLACE BID"/></span>
</form>
제품상태 : ${auction.condition}
<br>
남은 시간 : <span id="dtime"></span>
<br>
태그 : ${auction.ref}
<h3>상세설명</h3>
<hr>
${auction.descrip}
<br><br>

${loginOK.id}
${auction.code}
${auction.term}

<br>댓글 수 &nbsp;&nbsp;&nbsp;&nbsp;
<c:if test="${loginOK.id == sale.id}">
<a href="mymodi.go"><button>수정</button></a>
<a href="delete.bd?seq=${saModi.seq}"><button>삭제</button></a>
</c:if>
<hr>

<table class="table table-hover table-secondary">


</table>
</body>
</html>

