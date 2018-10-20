<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">

</script>
</head>
<body>
<h2>게시글 보기</h2>
 <form method="get" action="/BidProject/boardview.bd">

<table width="500">
<tr>
	<td colspan="3" bgcolor="777777"></td>
</tr>

<tr>
<!-- 	<td colspan="3"><font size="5">{ob.subject}</font></td> -->
</tr>
<td width="200" align="center">제목 : [${view.subject}]</td>
<tr>
	<td colspan="3" bgcolor="555555"></td>
	
</tr>
<tr>
	<td width="150">글번호 : ${view.seq}</td>
	<td width="200">작성자 : ${view.name }</td>
	
</tr>
<tr>
	<td colspan="3" bgcolor="777777"></td>
</tr>

<tr>
	<td colspan="3" height="200" valign="top"><pre>${view.content}</pre></td>
</tr>

<tr>
	<td colspan="3" bgcolor="777777"></td>
</tr>
</table>

</form>

<a href="qna.bd"><button id="list">목록</button></a>
<c:if test="${loginOK.id == view.id}">
<a href="modify.bd?seq=${view.seq}"><button>수정</button></a>
<a href="delete.bd?seq=${view.seq}"><button>삭제</button></a>
</c:if>



</body>
</html>