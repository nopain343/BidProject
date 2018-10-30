<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	bidding 올리긩 파일업로드

	
	<!-- <form method="post"
		enctype="multipart/form-data" action="/BidProject/saleUpload.sa"> -->

	<!-- form name="imageBoardWrifeform" -->

	<form:form method="post" enctype="multipart/form-data" modelAttribute="uploadFile" action="/BidProject/saleUpload.sa">
		<table>
			<tr>
				<td><select name="cat1">
						<option value='' selected>카테고리</option>
						<option value="AA">의류</option>
						<option value="BB">패션잡화</option>
						<option value="CC">뷰티미용</option>
						<option value="CC">유아/아동/출산</option>
						<option value="CC">스포츠레저</option>
						<option value="CC">디지털가전</option>
						<option value="CC">애완</option>
						<option value="CC">도서/티켓</option>
				</select></td>
			</tr>
			<tr>
				<td><b>아이디</b></td>
				<td><input type="text" name="id" value="${loginOK.id}" readonly></td>
			</tr>
			<tr>
				<td><b>마감시간</b></td>
				<td><input type="text" name="term"></td>
			</tr>
			<tr>
				<td><b>코드</b></td>
				<td><input type="text" name="code"></td>
			</tr>
			<tr>
				<td><b>상품명</b></td>
				<td><input type="text" name="prodname"></td>
			</tr>
			<tr>
				<td><b>시작가</b></td>
				<td><input type="number" name="price"></td>
			</tr>
			<tr>
				<td><b>상태</b></td>
				<td><input type="text" name="condition"></td>
			</tr>
				<tr>
				<td><b>해시태그</b></td>
				<td><input type="text" name="ref"></td>
			</tr>

			<tr>
				<td><b>내용</b></td>
				<td><textarea rows="12" cols="40" name="descrip"></textarea></td>
			</tr>
			
			<tr>
				<td><b>이미지</b></td>
				<td><input type="file" name="file"></td>
				<td><form:errors path="file"/></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit" value="등록">
					<input type="reset" value="취소"> 
					
					
					
					<a href="qna.bd?pg=${view.pg}"><button id="list">목록</button></a></td>
			</tr>
		</table>
	</form:form>

</body>
</html>