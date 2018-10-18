<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE htm>
<html>
<head>
<meta http-equiv="Content-Type">
<title>Insert title here</title>
</head>
<body>
<h2>환영합니다.</h2>
<h4>간단한 회원가입으로 저희와 함께하세요</h4>
<form action="insertProc.go" method="post">
아이디 <input type="text" id="id" name="id" placeholder="아이디 (4~12자 영문 대소문자)"/><br>

비밀번호 <input type="password" id="password" name="password" placeholder="비밀번호는 6~16자 영문 대소문자, 숫자를 조합하여 입력해주세요"/><br>

비밀번호 확인 <input type="password" id="password2" name="password2" placeholder="비밀번호 확인"/><br>

이름 <input type="text" id="username" name="username" placeholder="본인의 실명을 입력해주세요"/><br>

주소 <input type="text" id="address" name="address"/><br>

전화번호 <input type="text" id="phone" name="phone" placeholder="예) 010-1234-5678"/><br>

<input type="submit" value="등록"/>
</form>
<a href="/BidProject/login.go"><button id="back">뒤로가기</button></a>

</body>
</html>