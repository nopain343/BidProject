<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE htm>
<html>
<head>
<meta http-equiv="Content-Type">
<title>Insert title here</title>
</head>
<script type="text/javascript">
function goPopup(){
   // 주소검색을 수행할 팝업 페이지를 호출합니다.
   // 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrLinkUrl.do)를 호출하게 됩니다.
   var pop = window.open("/BidProject/popup/jusoPopup.jsp","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
   
   // 모바일 웹인 경우, 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrMobileLinkUrl.do)를 호출하게 됩니다.
    //var pop = window.open("/popup/jusoPopup.jsp","pop","scrollbars=yes, resizable=yes"); 
}

function jusoCallBack(roadFullAddr){
   // 팝업페이지에서 주소입력한 정보를 받아서, 현 페이지에 정보를 등록합니다.
   document.form.roadFullAddr.value = roadFullAddr;   
}
</script>
<body>
<h2>환영합니다.</h2>
<h4>간단한 회원가입으로 저희와 함께하세요</h4>
<form action="/BidProject/insertProc.go" method="post" name="form">
아이디 <input type="text" id="id" name="id" placeholder="아이디 (4~12자 영문 대소문자)"/><br>

비밀번호 <input type="password" id="password" name="password" placeholder="비밀번호는 6~16자 영문 대소문자, 숫자를 조합하여 입력해주세요"/><br>

비밀번호 확인 <input type="password" id="password2" name="password2" placeholder="비밀번호 확인"/><br>

이름 <input type="text" id="username" name="username" placeholder="본인의 실명을 입력해주세요"/><br>

주소 <input type="text" id="roadFullAddr" name="roadFullAddr" style="width: 500px"/>

<input type="button" onclick="goPopup();" value="주소검색"/><br>

전화번호 <input type="text" id="phone" name="phone" placeholder="예) 010-1234-5678"/><br>

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
비밀번호 찾기 답 <input type="text" id="pwanswer" name="pwanswer" placeholder="질문의 답을 해주세요"/>

<br><br><br><br>

<input type="submit" value="회원가입"/>

</form>
<a href="/BidProject/login.go"><button id="back">뒤로가기</button></a>

</body>
</html>