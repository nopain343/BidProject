<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*" %>
<%@ page import="com.category.vo.*" %>


<%
	int n = ((List<CategoryVO>)request.getAttribute("list")).size();
%>
<c:import url = "mypage.jsp"/>

<section class="wrap1">
	<c:forEach var="ob" items="${list}" varStatus="vs">
		<section class="wrap2">
		
			<img class="bidImage" src="/BidProject/resources/image/${ob.code}.jpg">
			
			<div class="wrap3">
				<span class="prodname">${ob.prodname}</span><br><br><br><br>
				<div class="wrap4">
					<span id="price${vs.count}" class="price">현재응찰 최고가: ${ob.price}원</span><br>
					<span class="term">응찰 마감 시간: ${ob.term}</span>
				</div>
				<span id="myBid${vs.count}"><a href="/BidProject/auction.au?code=${ob.code}" class="toAuction">상품정보가기</a></span>
				<%-- <span id="timetest${vs.count}"></span><br> --%>
				
				<input type="hidden" id="term${vs.count}" value="${ob.term}"/>
				<input type="hidden" id="catchTotal" value="<%=n%>"/>
				<input type="hidden" id="secretCode${vs.count}" value="${ob.code}"/>
				<input type="hidden" id="confirm${vs.count}" value="${ob.confirm}"/>
			</div>
			
		</section>
		<hr class="midLine">
	</c:forEach>
</section>
	
	
</body>
</html>