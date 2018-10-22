<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 찾기</title>
</head>
<body>
<form action="/BidProject/searchId2.go" method="post">
	본인의 실명을 입력해주세요
	<input type="text" id="username" name="username"/>
	<br>
	본인의 휴대폰 번호를 입력해주세요
	<input type="text" id="phone" name="phone"/>
	<br>
	<input type="submit" value="찾기"/>
</form>
<a href="/BidProject/login.go">뒤로 가기</a>

</body>
</html>