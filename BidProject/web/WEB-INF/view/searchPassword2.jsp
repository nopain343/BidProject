<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form method="post" action="/BidProject/searchPassword3.go">
비밀번호 찾기 질문 : <input id="pwquestion" name="pwquestion" value="${searchOK.pwquestion}">
<br>
비밀번호 찾기 답 : 
<input type="text" id="pwanswer" name="pwanswer"/>
<br>
<input type="submit" value="아이디 찾기"/>
</form>

<a href="/BidProject/searchPassword.go">뒤로 가기</a>


</body>
</html>