<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE htm>
<html>
<head>
<meta http-equiv="Content-Type">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/insert.js"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/insert.css">
</head>


<body>
<h1 class="title"><a href="main.go?page=1">LET IT BID</a></h1>

<div class="wrap">


<form action="/BidProject/insertProc.go" method="post" name="form" onsubmit="return Validate();">


<label for="id" class="txtid">아이디</label><br>
	 <input type="text" id="id" name="id" maxlength="12" autocomplete="off"/><br>
	 <!-- <button class="idbtn" onclick="getID();">중복확인</button><br> -->
	 <span id="idch"></span><br>
	 
	 
<label for="password" class="txtpw">비밀번호</label><br>	 
	 <input type="password" id="password" name="password" maxlength="16" placeholder="6~16자의 영문 대소문자, 숫자"/><br><br>


<label for="password2" class="txtpw2">비밀번호 확인</label><br>
	 <input type="password" id="password2" name="password2" maxlength="16"/><br>
	 <span id="pwch"></span><br>


<label for="username" class="txtname">이름</label><br>
	 <input type="text" id="username" name="username"/><br>
	 <span id="usernamech"></span><br>
    

<label for="roadFullAddr" class="txtaddr">주소</label><br>
	 <input type="text" id="roadFullAddr" name="roadFullAddr"/>
	 <input type="button" class="addrbtn" onclick="goPopup();" value="주소검색"/><br>
	 <span id="addrch"></span><br>

<label for="phone" class="txtphone">전화번호</label><br>
	 <input type="text" id="phone" name="phone"  placeholder="예) 010-1234-5678"/><br>
     <span id="phonech"></span><br>


<label for="pwquestion" class="txtpwqt">비밀번호 찾기 질문</label><br>
	 <select id="pwquestion" name="pwquestion">
  	 <option>기억에 남는 추억의 장소는?</option>
     <option>자신의 인생 좌우명은?</option>
     <option>가장 기억에 남는 선생님 성함은?</option>
     <option>자신의 보물 제1호는?</option>
     <option>유년시절 가장 생각나는 친구 이름은?</option>
     <option>인상 깊게 읽은 책 이름은?</option>
     <option>다시 태어나면 되고 싶은 것은?</option>
     <option>초등학교 때 기억에 남은 짝궁 이름은?</option>
     </select><br><br>
     
     
<label for="pwanswer" class="txtpwas">비밀번호 찾기 답</label><br>
	 <input type="text" id="pwanswer" name="pwanswer" autocomplete="off"/><br>
   	 <span id="questionch"></span><br>


<br>
<input type="submit" class="submit" value="가입하기"/>

</form>

</div>
</body>
</html>