<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:import url="mypage.jsp" />

<h3>내상품관리</h3>
	<c:forEach var="ob" items="${list}" varStatus="status">
		<section class="product1">
		
			<div class="photo">
				<img src="/BidProject/resources/image/${ob.code}.jpg" style="width: 220px; height: 180px;">
			</div>
			
			<section class=wrap01>
				<section class="wrap1">
					<span class="prodname">${ob.prodname}</span>
					<div class="wrap2">
						<span class="price">현재응찰 최고가: ${ob.price}원</span><br>
						<span class="term">응찰 마감 시간: ${ob.term}</span>
					</div>
					<input type="hidden" id="term${status.count}" value="${ob.term}"/>
					
					<span id="timetest"></span><br>
					<span id="myBid"><a href="/BidProject/auction.au?code=${ob.code}">상품정보가기</a></span>
					
					
					<%-- <c:if test="${!empty loginOK}">
	      				<a href="/BidProject/auction.au?code=${ob.code}">상품정보가기</a>
	      			</c:if>
	      			
	      			<c:if test="${!empty loginOK}">
	      				<a href="/BidProject/auction.au?code=${ob.code}">판매확정</a>
	      			</c:if> --%>
	      			
				</section>
			</section>
			
		</section>
		<br>
	</c:forEach>

</body>
</html>