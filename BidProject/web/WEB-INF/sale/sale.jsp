<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
	<jsp:include page="/menu.jsp" flush="true" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/sale.css">
<link href="https://fonts.googleapis.com/css?family=Cinzel" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="/jquery.datetimepicker.css"/>
<script src="/jquery.js"></script>
<!-- date -->
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />  
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>  
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>  
<!-- time -->
<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.css">
<script>

$(function() {
    $( "#date" ).datepicker({
        dateFormat : "yy-mm-dd"
    });
    
    $('#time').timepicker({
        timeFormat: 'HH:mm:ss',
        interval: 30,
        minTime: '00',
        maxTime: '23',
        defaultTime: '12',
        startTime: '1',
        dynamic: false,
        dropdown: true,
        scrollbar: true
    });
    
    
});



</script>
<title>Insert title here</title>
<body>
<script src="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.js"></script>

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
				<td><input type="hidden" name="id" value="${loginOK.id}"></td>
			</tr>
			
			<tr>
			<td class="prodname-1">상품명</td>
				<td colspan="4"><input type="text" name="prodname" id="prodname" class="prodname"><br></td>
			
			</tr>
			<tr><td><td><tr>
			<tr>
				<td><br>내용</td>
				<td colspan="4"><textarea rows="12" cols="40" name="descrip" style="resize: none; width: 565px;border:1px solid "></textarea></td>
			</tr>
			<tr><td><br></td></tr>
			<tr>
			    <td>분류</td>
				<td>
					<select name="cat1" id="cat1">
						<option value='' selected >----------------select----------------</option>
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
				<td>상태</td>
	            <td>
		            <select name="condition" id="condition">
		            <option value='' selected>----------------select----------------</option>
		                  <option>중고</option>
		                  <option >중고+하자 (하자가 있는 중고)</option>
		                  <option >새물품(미사용)</option>
		                  <option>새것+하자(새것이고 하자가 있음)</option>
		                  <option >거의새것(새것이고 하자가 없음)</option>
		
		            </select>
	            </td>
				
			</tr>
		
			<tr>
				<td>시작가</td>
				<td><input type="number" name="price" id="price"></td>
				<td>마감시간</td>
				<td><input type="text" name="term"  id="term" placeholder="YYYY-MM-DD 00:00:00"></td>
				
				<!-- <td>마감 날짜</td>
				<td>
				 <input type="checkbox" id="testDatepicker" value="날짜">
				 <input type="text" name="date" id="date" value="날짜 선택">
				 <input type="text" name="time" id="time" value="시간 선택">
				</td> -->
				
			</tr>
			
			<tr>
			<td><br><br><br></td>
			</tr>
			
			<tr>
			<td><br></td>
				<td colspan="3" align="center">
				<input type="submit" id="submit" value="등록">
				<input type="reset" id="submit" value="수정">
				<input type="reset" id="submit" value="돌아가기">
			</tr>
		</table>
	</form:form>
</div>
</body>
</html>