<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
	<jsp:include page="/menu.jsp" flush="true" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/sale.css">
<link href="https://fonts.googleapis.com/css?family=Cinzel" rel="stylesheet">
<title>Insert title here</title>
<body>


<div class="formcover"></div>
<div class="form">
<section id="main" class="main">
	<section id = "head" class="head">START BIDDING</section><br>
</section>
	<form:form method="post" enctype="multipart/form-data"
		modelAttribute="categoryVO" action="/BidProject/saleUpload.sa">
<div class="left"></div>
<div class="right"></div>
<table class="table">
			<tr>
			<td>카테고리</td>
				<td>
					<select name="cat1" id="cat1">
						<option value='' selected>----------------select--------------</option>
						<option value="AA">의류</option>
						<option value="BB">패션잡화</option>
						<option value="CC">뷰티미용</option>
						<option value="DD">유아/아동/출산</option>
						<option value="EE">스포츠레저</option>
						<option value="FF">디지털가전</option>
						<option value="GG">애완</option>
						<option value="HH">도서/티켓</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>상품명</td>
				<td><input type="text" name="prodname" id="prodname" id="prodname"></td>
			</tr>
			
			<tr>
				<td>시작가</td>
				<td><input type="number" name="price" id="price"></td>
			</tr>
			<tr>
				<td>마감시간</td>
				<td><input type="text" name="term" id="term" placeholder="YYYY-MM-DD 00:00:00"></td>
			</tr>

			
			<tr>
	            <td>상태</td>
	            <td>
		            <select name="condition" id="condition">
		            <option value='' selected>----------------select--------------</option>
		                  <option>중고</option>
		                  <option >중고+하자 (하자가 있는 중고)</option>
		                  <option >새물품(미사용)</option>
		                  <option>새것+하자(새것이고 하자가 있음)</option>
		                  <option >거의새것(새것이고 하자가 없음)</option>
		
		            </select>
	            </td>
         	</tr>
         
			<tr>
				<td>해시태그</td>
				<td><input type="text" name="ref" id="ref"></td>
			</tr>
			<tr>
				<td><br>내용</td>
				<td><textarea rows="12" cols="40" name="descrip"></textarea></td>
			</tr>
			
			<tr>
				<td>이미지 업로드</td>
				<td><input type="file" name="file"></td>
				<form:errors path="file"/>
			</tr>
			<tr>
				<td colspan="2" align="center">
				<input type="submit" id="submit" value="등록">
				<input type="reset" id="submit" value="다시쓰기">
				<input type="reset" id="submit" value="메인으로">
			</tr>
		</table>
	</form:form>
</div>
</body>
</html>