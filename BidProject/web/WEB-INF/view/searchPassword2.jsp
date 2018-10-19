<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form method="post" action="/BidProject/searchPasswordOK.go">
비밀번호 찾기 질문 : <input id="pwquestion" name="pwquestion" value="${search.pwquestion}">
<br>
비밀번호 찾기 답
<input type="text" id="pwanswer" name="pwanswer" value="${search.pwanswer}"/>
<input type="hidden" id="pwanswer" name="pwanswer"/>
<input type="hidden" id="password" name="password" value="${search.password}"/>
<input type="submit" value="아이디 확인"/>
</form>


</body>
</html>