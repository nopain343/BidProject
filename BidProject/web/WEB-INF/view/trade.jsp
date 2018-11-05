<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>거래자 정보 확인</title>
</head>
<body>
<span>${vo.prodname}</span><br>
<span>${vo.finalPrice}원</span><br>
<span>${vo.descrip}</span>
<br><br>
판매자 내역 : 
이름 : <span>${vo.username_seller}</span><br>
주소 : <span>${vo.roadFullAddr_seller}</span><br>
연락처 : <span>${vo.phone_seller}</span>
<br><br>
응찰자 내역 : 
이름 : <span>${vo.username_bidder}</span><br>
주소 : <span>${vo.roadFullAddr_bidder}</span><br>
연락처 : <span>${vo.phone_bidder}</span>
</body>
</html>