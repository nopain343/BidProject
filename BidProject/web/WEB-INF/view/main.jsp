<%@page import="com.user.vo.UserVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   중고경매 프로젝트 됐으면 좋겠다.  --이지윤
   <br>

   <div id="search" class="search">
      검색 <input id="query" name="query" type="text" title="검색어 입력"
         maxlength="255" class="input_text" tabindex="1"
          value="" />
         <a href=""><button id="search">검색</button></a>
   </div>
   <br>
	
   <div id="log">
	   <c:if test="${empty loginOK}">
			<a href="/BidProject/login.go"><button id="login">로그인</button></a>
	   </c:if>
	
	   <c:if test="${!empty loginOK}">
		  	<a href="/BidProject/logout.go"><button id="logout">로그아웃</button></a>
		  	<%
				UserVO vo = (UserVO)session.getAttribute("loginOK");
			%>
			<%=vo.getId()%>
			<%=vo.getPassword()%>
			<%=vo.getUsername()%>
			<%=vo.getPhone()%>
			<%=vo.getAddress()%>
	   </c:if>
   </div>

   <div id="sale" >
      <button id="sale">판매하기</button>
   </div>
   <br>
    <div id="qna">
      <a href="qna.bd"><button id="qna">Q&A</button></a>
   </div>
   <br>
   <div id="mystore" >
      <a href=""><button id="mystore">내 상점</button></a>
   </div>
   <br>

   <div id="category">
       <button id="category">카테고리</button>
   </div>
   <br>

</body>