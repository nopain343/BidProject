<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE htm>
<html>
<head>
<meta http-equiv="Content-Type">
<title>회원정보수정</title>
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
</head>
<body>
<h2>[회원정보수정]</h2>
<form action="/BidProject/updateProc.go" method="post">
아이디 <input type="text" id="id" name="id" value="${loginOK.id}" readonly/><br>

비밀번호 <input type="password" id="password" name="password" value="${loginOK.password}"/><br>

비밀번호 확인 <input type="password" id="password2" name="password2"/><br>

이름 <input type="text" id="username" name="username" value="${loginOK.username}"/><br>

주소 <input type="text" id="roadFullAddr" name="roadFullAddr" style="width: 500px" value="${loginOK.roadFullAddr}"/>

<input type="button" onclick="goPopup();" value="주소검색"/><br>

전화번호 <input type="text" id="phone" name="phone" value="${loginOK.phone}"/><br>
 
<input type="submit" value="수정완료"/>
</form>
<a href="/BidProject/mypage.go"><button id="back">뒤로가기</button></a>

</body>
</html>