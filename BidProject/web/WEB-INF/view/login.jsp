<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE htm>
<html>
<head>
<meta http-equiv="Content-Type">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/login.css">
<title>로그인, 회원가입</title>
</head>
<body class="body">


<div id="wrapper">
<!-- <p class="header">LOGIN</p><br> -->
<h1><a href="/BidProject/main.go"><span class="header">LET IT BID</span></a></h1><br>
<form action="/BidProject/loginProc.go" method="post">
	<input type="text" id="id" name="id" placeholder="ID"/><br><br>
	<input type="password" id="password" name="password" placeholder="Password"/><br><br><br>
	<input type="hidden" id="username" name="username"/>
	<input type="hidden" id="roadFullAddr" name="roadFullAddr"/>
	<input type="hidden" id="phone" name="phone"/>
	<input type="submit" id="submit" value="로그인"/>
</form>

계정이 없으신가요?&nbsp;
<a href="/BidProject/insert.go">가입하기</a>
<br>
<br>
 <a href="/BidProject/searchId.go">아이디 찾기</a>&nbsp;&nbsp;&nbsp;&nbsp;
<a href="/BidProject/searchPassword.go">비밀번호 찾기</a>
</div>
</body>
</html>