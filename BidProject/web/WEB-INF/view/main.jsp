<%@page import="com.user.vo.UserVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link href="https://fonts.googleapis.com/css?family=Cinzel" rel="stylesheet">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/main.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Let It Bid</title>
</head>
<body>
<header>
	<div id="search" class="search">
		<i class="fa fa-search" class="w3-xlarge"></i>
		<input id="query" name="query" type="text" title="검색어 입력" maxlength="255" class="input_text"/>
	</div>

	<c:if test="${empty loginOK}">
		로그인해주세요
	</c:if>
	<c:if test="${!empty loginOK}">
		${loginOK.id }님이 로그인하셨습니다.
	</c:if>
   <br>

	<h1>LET IT BID</h1>
	
	<ul>
		<li id="log">
			<c:if test="${empty loginOK}">
				<h2><a href="/BidProject/login.go" class="log">LOGIN</a></h2>
			</c:if>
			<c:if test="${!empty loginOK}">
			  	<h2><a href="/BidProject/logout.go" class="log">LOGOUT</a></h2>
			</c:if>
		</li>
	
		<li id="mypage">
			<c:if test="${empty loginOK}">
	      		<h2><a href="/BidProject/mypage.go" class="mypage">MY PAGE</a></h2>
	      	</c:if>
	   	</li>
	</ul>
</header>

<section id="main" class="main">
	<div>
		<h1>BID YOUR ITEMS</h1>
	</div>
</section>

<section>
	<nav id="filter">
		<h2><a href="" class="category">CATEGORY</a></h2>
		<h2><a href="" class="bidding">START BIDDING</a></h2>
	</nav>
</section>

<section>
	<div>
		상품사진들 list로 들어가는 부분
	</div>
</section>

<div id="qna">
	<h2><a href="qna.bd" class="qna">Q&amp;A</a></h2>
</div>

<footer>
FOOTER : 기타 정보들 입력
</footer>
</body>
</html>