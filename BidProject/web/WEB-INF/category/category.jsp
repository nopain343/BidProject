<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="com.category.vo.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>카테고리</title>
<script>
	
</script>
</head>
<body>

	------카테고리------



	<tr>
		<c:if test="${!empty list}">
			<c:forEach items="${list}" var="ob">

				<table width="500">
					<tr>
						<td colspan="3" bgcolor="777777"></td>
					</tr>
					<tr>
						<th>1</th>
						<td>${ob.cat1}</td>
						<td><a href="">${ob.name_p}</a></td>
						<td>${ob.price}</td>
						<td>${ob.ref}</td>
						<td>${ob.code}</td>
						<td>${ob.id}</td>
						<td>${ob.term}</td>

					</tr>
					
	</tr>
	</table>
	</c:forEach>
	</c:if>










</body>
</html>