<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h2>제발 돼라 ,,,,</h2>
<table border="1">
	<tr>
		<td>이름</td>
		<td>나이</td>
		<td>${content.name}</td>
	</tr>
	
	<c:if test="${!empty list}">
		<c:forEach items="${list}"  var="ob">
			<tr>
				<td>${ob.name}</td>
			</tr>
		</c:forEach>
	</c:if>
</table><br><br>
</body>
</html>