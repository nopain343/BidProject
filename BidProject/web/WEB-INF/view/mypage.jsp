<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<jsp:include page="/menu.jsp" flush="true" />

<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/myBidCount.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/myBidPlace.js"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/mypage.css">
<link href="https://fonts.googleapis.com/css?family=Cinzel" rel="stylesheet">


<section id="main" class="main">
	<h1>MY PAGE</h1>
</section>
<section class="cover"></section>
<section class="cover2">
	<form action="/BidProject/myBid.go" method="get">
		<input type="hidden" name="id" value="${loginOK.id}">
		<input type="submit" value="MY PRODUCTS" />
	</form>
	
	<form action="/BidProject/myBidPlace.go" method="get">
		<input type="hidden" name="id" value="${loginOK.id}">
		<input type="submit" value="BIDDING STATUS" />
	</form>
</section>

<section class="cover3">
	<form action="/BidProject/delete.go" method="post">
		<input type="submit" value="LEAVE"/>
	</form>
	
	<form action="/BidProject/update.go" method="post">
		<input type="submit" value="CHANGE USERINFO"/>
	</form>
</section>
	


<a href="/BidProject/main.go?page=1">BACK TO MAIN</a>

