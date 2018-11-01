<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.user.vo.UserVO"%>
<%@ page import="java.util.*"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.category.vo.*"%>

<c:import url="mypage.jsp" />
<c:import url="main.jsp"/>


<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	내 경매내역
	<c:forEach var="ob" items="${list}">
		<section class="product1">
			<div class="photo">
				<img src="/BidProject/resources/image/${ob.code}.jpg"
					style="width: 100%; height: 180px;">
			</div>
			<section class=wrap01>
				<section class="wrap1">
					<div class="prodname">
						<a href="/BidProject/auction.au?code=${ob.code}">${ob.prodname}</a><br>
					</div>
					<div class="wrap2">
						<div class="ref">${ob.ref}<br>
						</div>
						<div class="price">${ob.price}<br>
						</div>
						[현재가격]<br>
						<div class="term">${ob.term}</div>
					</div>
				</section>
			</section>
		</section>
	</c:forEach>



</body>
</html>