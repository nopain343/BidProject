<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>글쓰기</title>

</head>
<body>
<form name="boardWriteForm" method="post" action="/BidProject/write.bd">
<h3>글쓰기</h3>
<table border="1" >
	<tr>
		<td>아이디</td>
		<td><input type="text" name="id" size="50"  value="test1" readonly></td>
	</tr>
	<tr>
		<td>이름</td>
		<td><input type="text" name="name" size="50" value="test_name" readonly></td>
	</tr>	
	<tr>
		<td>이메일</td>
		<td><input type="text" name="email" value="test1_email" size="50"></td>
	</tr>
	<tr>
		<td>제 목</td>
		<td><input type="text" name="subject" value="test1_title" size="50"></td>
	</tr>
	
	<tr>
		<td>내 용</td>
		<td><textarea name="content" cols="50" rows="15" value="test1"></textarea></td>
	</tr>
	
	<tr>
		<td colspan="2" align="center">
		<input type="submit"  value="글쓰기">  
		<input type="reset" value="다시작성">
		</td>
		
	</tr>
</table>
</form>
</body>
</html>