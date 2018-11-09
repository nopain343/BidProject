<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script>


function bango(){	
	window.opener.name = "parent";
	document.banreason.target = opener.name;
	document.banreason.submit();
	
	this.close();
	}
</script>
</head>
<body>

<h2>신고하기</h2>
<br>
판매자 : ${ban.seller_id} <br>
제목 : ${ban.prodname}
<br><hr><br>

<form action="banyou.go" name="banreason" method="post">
	<input type="hidden" value="${ban.code}" name="code"/>
	<input type="hidden" value="${ban.seller_id}" name="seller_id"/>
	<input type="hidden" value="${ban.prodname}" name="prodname"/>

사유 선택 : 
	<input type="checkbox" name="reason" value="1"> 연락 두절
	<input type="checkbox" name="reason" value="2"> 추가 가격 인상 요구
	<input type="checkbox" name="reason" value="3"> 제품 불량 및 미배송
	
	<input type="button" value="신고하기" onclick="bango();">
	<input type="button" value="취소하기" onclick="javascript:window.close()">
</form>

</body>
</html>