<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<jsp:include page="/menu.jsp" flush="true" />
<title>경매자 & 낙찰자 정보 확인</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/trade.css">

		<section class="wra1">
			<div class="wra2">
				<div class="wra3">
				
					<img class="bidImage" src="/BidProject/resources/image/${vo.code}.jpg">
					
					<div class="wra4">
						<span>${vo.prodname}</span><br>
						<span>${vo.finalPrice}원</span><br>
						<span>${vo.descrip}</span>
					</div>
					
				</div>
				
				<div class="wra5">
				
					<div class="wra6">
						판매자 내역 : 
						이름 : <span>${vo.username_seller}</span><br>
						주소 : <span>${vo.roadFullAddr_seller}</span><br>
						연락처 : <span>${vo.phone_seller}</span>
					</div>
					
					<div class="wra7">
						응찰자 내역 : 
						이름 : <span>${vo.username_bidder}</span><br>
						주소 : <span>${vo.roadFullAddr_bidder}</span><br>
						연락처 : <span>${vo.phone_bidder}</span>
					</div>
					
				</div>
			</div>
		</section>
	</body>
</html>