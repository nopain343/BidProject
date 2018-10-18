<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="styleBoard.css">
<script>
/* function checkLogin(id,seq,pg){
	if(id=='null') 
		alert("먼저 로그인하세요");
	else
		location.href="/bbs/board/boardView.jsp?seq="+seq+"&pg="+pg;
	
} */
</script>
</head>
<body>

<table border="1">
	<tr>
		<td>순서</td>
		<td>이름</td>
		<td>이메일</td>
		<td>제목</td>
		<td>내용</td>
		<td>그룹번호</td>
		<td>단계</td>
		<td>글순서 ㅇㅇㅇㅇ</td>
		<td>원글번호</td>
		<td>답변수</td>
		<td>조회수</td>
		
	</tr>
	
	<c:if test="${!empty list}">
		<c:forEach items="${list}"  var="ob">
			<tr>
				<td>${ob.seq}</td>
				<td>${ob.name}</td>
				<td>${ob.email}
				<td>${ob.subject}</td>
				<td>${ob.content}</td>
				<td>${ob.ref}</td>
				<td>${ob.lev}</td>
				<td>${ob.step}</td>
				<td>${ob.pseq}</td>
				<td>${ob.reply}</td>
				<td>${ob.hit}</td>
				<td>${ob.logtime}</td>
			</tr>
		</c:forEach>
	</c:if>
</table><br><br>



<%-- <table>
	<tr>
		<td colspan="5" bgcolor="777777"></td>
	</tr>
	<tr>
		<th width="100">글번호</th>
		<th width="300">제목</th>
		<th width="100">작성자</th>
		<th width="100">조회수</th>
		<th width="100">작성일</th>
	</tr>
	<tr>
		<td colspan="5" bgcolor="777777"></td>
	</tr>
	<%for(BoardDTO boardDto : list){ %>
	<tr>
		<td align="center"><%=boardDto.getSeq() %></td>
		<td>
		<% for(int i=0; i<boardDto.getLev(); i++){ %>
			&nbsp;
		<%} %>
		
		<%if(boardDto.getPseq()!=0){ %>
			<img src="/bbs/image/reply.gif">
		<%} %>
		
	
		</td>
		<td align="center"><%=boardDto.getId() %></td>
		<td align="center"><%=boardDto.getHit() %></td>
		<td align="center"><%=boardDto.getLogtime() %></td>
	</tr>
	<tr>
		<td colspan="5" bgcolor="cccccc"></td>
	</tr>
	<%}//for %>
	<tr>
		<td colspan="5" bgcolor="777777"></td>
	</tr>
	<tr>
		<td colspan="5" align="center"><%=paging.getPagingHTML() %></td>
	</tr>
</table> --%>
</body>
</html>











