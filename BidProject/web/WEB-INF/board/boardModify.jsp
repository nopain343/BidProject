<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>글 수정</title>
</head>
<body>
<form method="post" action="/BidProject/modify_proc.bd">
<h3>글 수정</h3>
<table border="1" >
	<tr>
		<td>아이디</td>
		<td><input type="text" name="id" size="50" readonly value=${modify.id }></td>
	</tr>
	<tr>
		<td>이름</td>
		<td><input type="text" name="name" size="50" readonly value=${modify.username }></td>
	</tr>	

	<tr>
		<td>제 목</td>
		<td><textarea name="subject" cols="50" rows="1">${modify.subject}</textarea></td>
	</tr>
	
	<tr>
		<td>내 용</td>
		<td><textarea name="content" cols="50" rows="15" >${modify.content}</textarea></td>
	</tr>
	
	<tr>
		<td colspan="2" align="center">
		
		<input type="hidden" name="seq" value="${modify.seq}">
		<input type="submit"  value="수정">  
		


		</td>
		
	</tr>
</table>
</form>


</body>
</html>