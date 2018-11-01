<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>[마이페이지]</h2>
<form action="/BidProject/update.go" method="post">
	<input type="submit" value="회원정보수정"/>
</form>

<form action="/BidProject/delete.go" method="post">
	<input type="submit" value="회원탈퇴"/>
</form>
	<form action="/BidProject/myBid.go" method="get">
		<input type="hidden" name="id" value="${loginOK.id}">
		<input type="submit" value="나의 경매내역" />
	</form>
	
	<form action="/BidProject/myBidPlace.go" method="post">
		<input type="submit" value="나의 입찰 현황" />
	</form>

<a href="/BidProject/main.go">메인으로 가기</a>


</body>
</html>