<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE htm>
<html>
<head>
<meta http-equiv="Content-Type">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/insert.js"></script>
</head>



<body>
<h2>환영합니다.</h2>
<h4>간단한 회원가입으로 저희와 함께하세요</h4>
<form action="/BidProject/insertProc.go" method="post" name="form" onsubmit="return Validate();">

아이디 
<input type="text" id="id" name="id" required maxlength="12"
    oninvalid="this.setCustomValidity('아이디를 입력해주세요')"
    oninput="this.setCustomValidity('')"  /><br>&nbsp;&nbsp;&nbsp;
	<span id="check"></span><br>

비밀번호
<input type="password" id="password" name="password" required  
    maxlength="16"
    oninvalid="this.setCustomValidity('비밀번호를 입력해주세요')"
    oninput="this.setCustomValidity('')"  /><br>


비밀번호 확인
<input type="password" id="password2" name="password2" required  maxlength="16"
    oninvalid="this.setCustomValidity('비밀번호를 확인해주세요')"
    oninput="this.setCustomValidity('')"  /><br>&nbsp;&nbsp;&nbsp;
<span id="result"></span><br>


이름 <input type="text" id="username" name="username" required
    oninvalid="this.setCustomValidity('이름을 입력해주세요')"
    oninput="this.setCustomValidity('')"  /><br>&nbsp;&nbsp;&nbsp;
<span id="usernamech"></span><br>
    

주소 <input type="text" id="roadFullAddr" name="roadFullAddr" style="width: 500px"/>
<input type="button" onclick="goPopup();" value="주소검색"/><br>


전화번호 <input type="text" id="phone" name="phone" required placeholder="예) 010-1234-5678"
		oninvalid="this.setCustomValidity('전화번호를 입력해주세요')"
   		 oninput="this.setCustomValidity('')"/><br>



비밀번호 찾기 질문 
<select id="pwquestion" name="pwquestion">
  <option>기억에 남는 추억의 장소는?</option>
  <option>자신의 인생 좌우명은?</option>
  <option>가장 기억에 남는 선생님 성함은?</option>
  <option>자신의 보물 제1호는?</option>
  <option>유년시절 가장 생각나는 친구 이름은?</option>
  <option>인상 깊게 읽은 책 이름은?</option>
  <option>다시 태어나면 되고 싶은 것은?</option>
  <option>초등학교 때 기억에 남은 짝궁 이름은?</option>
</select>
<br>
비밀번호 찾기 답 <input type="text" id="pwanswer" name="pwanswer" required 
		 oninvalid="this.setCustomValidity('비밀번호 찾기 답을 입력해주세요')"
   		 oninput="this.setCustomValidity('')"/>

<br><br><br><br>

<input type="submit" value="회원가입"/>

</form>
<a href="/BidProject/login.go"><button id="back">뒤로가기</button></a>

</body>
</html>	