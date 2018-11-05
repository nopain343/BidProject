<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
     <%@ page import="java.util.*" %>
     <%@ page import="com.category.vo.*" %>
	<c:import url="mypage.jsp"></c:import>
<%
	int s = ((List<CategoryVO>)request.getAttribute("list")).size();
%>
나의 입찰현황

	<c:forEach var="ob" items="${list}" varStatus="vs" >
	s
	${ob.id }
	${ob.term}
	
				<div class="photo">
				<img src="/BidProject/resources/image/${ob.code}.jpg" style="width: 220px; height: 180px;">
			</div>
	<br>
	제품이름 : ${ob.prodname }
	
	현재응찰 최고가: <span class="price">${ob.price}</span><br>


<input type="hidden" id="term${vs.count}" value="${ob.term}"/>
					<input type="hidden" id="catchTotalP" value="<%=s%>"/>
					<input type="hidden" id="secretCode${vs.count}" value="${ob.code}"/>
					<span id="timetest${vs.count}"></span><br>
					<span id="myBid${vs.count}"><a href="/BidProject/auction.au?code=${ob.code}">상품정보가기</a></span>
					
					<input type="hidden" id="confirm${vs.count}" value="${ob.confirm}"/>
					
	
	<%-- 	<section class="product1">
		
			<div class="photo">
				<img src="/BidProject/resources/image/${ob.code}.jpg" style="width: 220px; height: 180px;">
			</div>
			---------------------------------------------------------------------
			<section class=wrap01>
				<section class="wrap1">
				<div>${ob.id }</div>
				<div class="photo">
				<img src="/BidProject/resources/image/${ob.code}.jpg" style="width: 220px; height: 180px;">
			</div>
			
					<div>${ob.prodname }</div>
					<span class="prodname">${ob.prodname}</span>
					<div class="wrap2">
						<span class="price">나의 응찰가: ${ob.finalPrice}원</span><br>
						
					</div>
					
					<span id="myBid"><a href="/BidProject/auction.au?code=${ob.code}">상품정보가기</a></span>
					
					
					<c:if test="${!empty loginOK}">
	      				<a href="/BidProject/auction.au?code=${ob.code}">상품정보가기</a>
	      			</c:if>
	      			
	      			<c:if test="${!empty loginOK}">
	      				<a href="/BidProject/auction.au?code=${ob.code}">판매확정</a>
	      			</c:if>
	      			
				</section>
			</section>
			
		</section>
		<br> --%>
	</c:forEach>

</body>
</html>