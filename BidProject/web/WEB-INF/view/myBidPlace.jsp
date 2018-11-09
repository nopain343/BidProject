<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*" %>
<%@ page import="com.category.vo.*" %>

<c:import url="mypage.jsp"></c:import>
<%
	int n = ((List<CategoryVO>)request.getAttribute("list")).size();
%>

<section class="wrapper1">
	<c:forEach var="ob" items="${list}" varStatus="vs">
		<div class="wrapper2">
		
			<img class="bidPlaceImage" src="/BidProject/resources/image/${ob.code}.jpg">
			
			<div class="wrapper3">
				<span class="prodname">${ob.prodname}</span>
				<div id="myBidPlace${vs.count}" class="wrapper5">
					<a href="/BidProject/auction.au?code=${ob.code}">상품정보가기</a>
				</div>
				<%-- <span id="timetest${vs.count}"></span><br> --%>
				
				<br><br><br>
				
				<div class="wrapper4">
					<span>마감시간 ${ob.term}</span><br>
					<span>나의 응찰가 ${ob.price}원</span><br>
					<span id="priceCheck${vs.count}" class="priceCheck"></span><br>
				</div>
				
				
				<input type="hidden" id="finalPrice${vs.count}" value="${ob.finalPrice}"/>
				<input type="hidden" id="price${vs.count}" value="${ob.price}"/>
				<input type="hidden" id="term${vs.count}" value="${ob.term}"/>
				<input type="hidden" id="catchTotal" value="<%=n%>"/>
				<input type="hidden" id="secretCode${vs.count}" value="${ob.code}"/>
				<input type="hidden" id="confirm${vs.count}" value="${ob.confirm}"/>
				
			</div>
		</div>
		<hr class="midLine">
</c:forEach>
</section>

</body>
</html>