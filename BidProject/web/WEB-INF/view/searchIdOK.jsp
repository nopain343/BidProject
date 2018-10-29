<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/searchIdOK.css">
<title>Insert title here</title>
</head>
<body>
<div class="box1">
<span class="let">LET IT BID</span>
</div>

<div class="wrap">
<form method="post" action="main.go">
<P class="idconf">회원님의 아이디는 ${searchOK.id} 입니다.</P>
</form>

<a href="/BidProject/login.go">로그인</a>
</div>
</body>
</html>