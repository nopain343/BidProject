<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE htm>
<html>
<head>
<meta http-equiv="Content-Type">
<title>Insert title here</title>
</head>
<body>
LOGIN

<form action="/BidProject/loginProc.go" method="post">
	<input type="text" id="id" name="id" placeholder="ID"/>
	<input type="password" id="password" name="password" placeholder="Password"/>
	<input type="hidden" id="nickname" name="nickname"/>
	<input type="hidden" id="address" name="address"/>
	<input type="hidden" id="phone" name="phone"/>
	<input type="submit" value="로그인"/>
</form>

<a href="join.go">회원가입</a>
</body>
</html>