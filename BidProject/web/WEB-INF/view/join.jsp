<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE htm>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>환영합니다.</h2>
<h4>간단한 회원가입으로 저희와 함께하세요</h4>
<input type="text"  id="id" name="id" placeholder="아이디 (4~12자 영문 대&middot;소문자)"/><br>

<input type="password" id="pwd" name="pwd" placeholder="비밀번호는 6~16자 영문 대소문자, 숫자를 조합하여 입력해주세요"/><br>

<input type="password" id="pwd2" name="pwd2" placeholder="비밀번호 확인"/><br>

<input type="text"  id="name" name="name" placeholder="이름(실명으로 입력해주세요)"/><br>
<input type="text"  id="birth" name="birth" placeholder="생년월일(ex.19921113)"/>
<ul>
	<li><input type="radio" name="gender" value="0" id="male"
		class="hide"><label for="male">남자</label></li>
	<li><input type="radio" name="gender" value="1" id="female"
		class="hide" checked="checked"><label for="female">여자</label>
	</li>
</ul>
<input type="text"  id="tel" name="tel" placeholder="휴대폰번호(-없이 입력)"/>


</body>
</html>