<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	bidding 올리긩 파일업로드
<!-- form name="imageBoardWrifeform" -->
	<form method="post"
		enctype="multipart/form-data" action="/BidProject/saleUpload.sa">
		<table>
			<tr>
				<td><select name="code">
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
				<td><b>상품명</b></td>
				<td><input type="text" name="prodname"></td>
			</tr>
			<tr>
				<td><b>시작가</b></td>
				<td><input type="text" name="price"></td>
			</tr>
				<tr>
				<td><b>마감시간</b></td>
				<td><input type="text" name="term"></td>
			</tr>
			<tr>
				<td><b>내용</b></td>
				<td><textarea rows="12" cols="40" name="imageContent"></textarea>
				</td>
			</tr>
			<tr>
				<td><b>이미지</b></td>
				<td><input type="file" name="imagePath" size="40"></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="button" value="등록" onclick="checkImageBoardWrite()"> 
					<input type="reset" value="취소"> 
					<input type="button" value="목록" onclick="location.href='/BidProject/saleList'">
				</td>
			</tr>
		</table>
	</form>

</body>
</html>