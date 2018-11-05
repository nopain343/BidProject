<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*" %>
<%@ page import="com.category.vo.*" %>

<%
	int n = ((List<CategoryVO>)request.getAttribute("list")).size();
%>
<c:import url="mypage.jsp" />
<h3>내상품관리</h3>
	<c:forEach var="ob" items="${list}" varStatus="vs">
		<section class="product1">
		
			<div class="photo">
				<img src="/BidProject/resources/image/${ob.code}.jpg" style="width: 220px; height: 180px;">
			</div>
			<section class=wrap01>
				<section class="wrap1">
					<span class="prodname">${ob.prodname}</span>
					<div class="wrap2">
						현재응찰 최고가: <span class="price">${ob.price}</span><br>
						<span class="term">응찰 마감 시간: ${ob.term}</span>
					</div>
					<input type="hidden" id="term${vs.count}" value="${ob.term}"/>
					<input type="hidden" id="catchTotal" value="<%=n%>"/>
					<input type="hidden" id="secretCode${vs.count}" value="${ob.code}"/>
					<span id="timetest${vs.count}"></span><br>
					<span id="myBid${vs.count}"><a href="/BidProject/auction.au?code=${ob.code}">상품정보가기</a></span>
					
					<input type="hidden" id="confirm${vs.count}" value="${ob.confirm}"/>
					
				</section>
			</section>
			
		</section>
		<br>
	</c:forEach>

</body>
</html>