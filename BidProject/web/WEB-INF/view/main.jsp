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
	<c:if test="${empty loginOK}">
		로그인해주세요
	</c:if>
	<c:if test="${!empty loginOK}">
		${loginOK.id }님이 로그인하셨습니다.
	</c:if>
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
   <div id="mypage">
      <a href="/BidProject/mypage.go"><button id="mypage">마이페이지</button></a>
   </div>
   <br>

   <div id="category">
       <button id="category">카테고리</button>
   </div>
   <br>

</body>